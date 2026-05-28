<?php
/**
 * Plugin Name: Yakiba — Default "Disable Page Title" on New Pages
 * Description: Stamps Astra's per-page meta `site-post-title = disabled` on newly
 *              created Pages that have never had the value set. Yakiba listings are
 *              built in Elementor with their own Heading widget, so Astra's auto
 *              entry-title (H1) is redundant and would otherwise render the title
 *              twice. The current Astra "dynamic customizer" save flow stopped
 *              stamping `site-post-title` on new pages (older pages still carry it),
 *              which reintroduced the duplicate-title bug. This fills in that
 *              default WITHOUT overriding any value an editor has explicitly chosen.
 * Author:      Yakiba
 * Version:     1.0.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

add_action( 'save_post_page', 'yakiba_default_disable_page_title', 10, 1 );

function yakiba_default_disable_page_title( $post_id ) {
	// Autosaves and revisions aren't real edits — ignore them.
	if ( wp_is_post_autosave( $post_id ) || wp_is_post_revision( $post_id ) ) {
		return;
	}

	// Defensive: only ever touch Pages.
	if ( 'page' !== get_post_type( $post_id ) ) {
		return;
	}

	// Re-entrancy guard: update_post_meta() below can re-fire save_post_page.
	static $running = false;
	if ( $running ) {
		return;
	}

	// Only set the default when the meta has NEVER been set. metadata_exists()
	// distinguishes "absent" (fill the default) from "present but empty" (an
	// explicit "show the title" choice that must be preserved).
	if ( metadata_exists( 'post', $post_id, 'site-post-title' ) ) {
		return;
	}

	$running = true;
	update_post_meta( $post_id, 'site-post-title', 'disabled' );
	$running = false;
}
