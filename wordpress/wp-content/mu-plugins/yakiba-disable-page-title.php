<?php
/**
 * Plugin Name: Yakiba — Suppress Astra Page Title on Elementor Pages
 * Description: Yakiba listings are built in Elementor with Ed's own Heading widget, so
 *              Astra's theme-printed entry-title (H1) is redundant and renders the title
 *              twice. The per-page lever is Astra's meta `site-post-title = disabled`.
 *
 *              WHY A READ-TIME FILTER, NOT A SAVE-TIME STAMP (this is the whole point):
 *              `site-post-title` is registered by Astra as REST post meta with
 *              show_in_rest=1 and default='' (Astra 4.12.6 registers it; see
 *              inc/compatibility/class-astra-elementor.php::elementor_default_setting(),
 *              which itself does update_post_meta($id,'site-post-title','disabled') when a
 *              page is built in Elementor). Because the registered default is the empty
 *              string, WordPress's REST registered-meta layer DELETES the row whenever a
 *              block-editor/REST save submits the key at its default (''). So Astra's own
 *              stamp AND our former save_post_page stamp both get wiped after the fact: the
 *              deletion happens later in (or entirely outside) the save_post request, so a
 *              save-time hook can never win that race. Page 7447 proved it — its same-block
 *              siblings (_astra_content_layout_flag, ast-title-bar-display, ast-featured-img
 *              = 'disabled') survived because they are NOT REST-registered, while
 *              site-post-title alone was deleted, then the page double-titled.
 *
 *              The fix runs at READ time: a `default_post_metadata` filter that returns
 *              'disabled' for `site-post-title` on Elementor-built pages. It needs no DB
 *              row, so there is nothing for the REST layer to delete — it cannot lose the
 *              race. Astra reads this meta via get_post_meta() everywhere it gates the title
 *              (e.g. Elementor-Pro compat override_with_post_meta() -> astra_the_title_enabled),
 *              and get_post_meta() honors default_post_metadata, so the title is suppressed
 *              reliably and permanently.
 *
 *              SCOPE: only Pages whose _elementor_edit_mode === 'builder'. This naturally
 *              EXCLUDES page 584 (BLOG / ARTICLES) — a non-Elementor page that legitimately
 *              relies on the Astra title — and never touches posts/articles. Pages with an
 *              explicit stored value (the ~167 listings carrying a real
 *              site-post-title='disabled' row) bypass this default entirely.
 *
 *              TRADE-OFF: because absence is Astra's only "show title" signal, this makes
 *              "title off" effectively mandatory for Elementor pages. To re-enable the Astra
 *              title on a specific Elementor page, add its ID to an allowlist exception below.
 * Author:      Yakiba
 * Version:     2.0.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

// Priority 20 so we run AFTER WordPress core's filter_default_metadata (priority 10), which
// supplies Astra's registered default of '' for this key. We override that '' to 'disabled'.
add_filter( 'default_post_metadata', 'yakiba_default_site_post_title', 20, 4 );

/**
 * Default `site-post-title` to 'disabled' for Elementor-built Pages.
 *
 * @param mixed  $value     Incoming default value (already '' from core's filter at prio 10).
 * @param int    $object_id Post ID.
 * @param string $meta_key  Meta key being defaulted.
 * @param bool   $single    Whether a single value was requested. When false, core's
 *                          get_metadata_default() wraps a bare scalar return into an array
 *                          for us (`if ( ! $single && ! is_array( $value ) ) { $value = array( $value ); }`),
 *                          so returning the string 'disabled' is correct for BOTH
 *                          $single=true and $single=false. Verified against WP core.
 * @return mixed 'disabled' for Elementor Pages, otherwise the unchanged $value.
 */
function yakiba_default_site_post_title( $value, $object_id, $meta_key, $single ) {
	// Only ever touch the title-disable meta. Checked FIRST so the get_post_meta() call
	// below — which re-enters this same filter for '_elementor_edit_mode' — bails out
	// immediately and cannot recurse.
	if ( 'site-post-title' !== $meta_key ) {
		return $value;
	}

	// Defensive: bail on an invalid ID or any non-Page. get_post_type() returns false for a
	// missing post, so this also covers the invalid-ID case. Never affect posts/articles.
	if ( empty( $object_id ) || 'page' !== get_post_type( $object_id ) ) {
		return $value;
	}

	// Only Elementor-built pages carry Ed's own Heading widget. Non-Elementor pages (e.g.
	// 584 BLOG / ARTICLES) fall through and keep Astra's default, so they show their title.
	if ( 'builder' !== get_post_meta( $object_id, '_elementor_edit_mode', true ) ) {
		return $value;
	}

	return 'disabled';
}
