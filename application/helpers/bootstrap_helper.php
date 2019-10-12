<?php 
/**
|----------------------------------------------------------------------------------|
| datetime picker
|----------------------------------------------------------------------------------|
*/

function datetimepicker($name="",$value="")
{

	echo '
        <div class="form-group">
            <div class="input-group date datetimepicker">
                <input type="text" class="form-control tdatetimepicker" name="'.$name.'" value="'.$value.'" />
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
            </div>
        </div>';
}

/**
|----------------------------------------------------------------------------------|
| alert notification
|----------------------------------------------------------------------------------|
*/

function alert_danger($message='')
{
	return '<div class="alert alert-danger">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				'.$message.
			'</div>';
}

function alert_success($message='')
{
	return '<div class="alert alert-success">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				'.$message.
			'</div>';
}

function alert_warning($message='')
{
	return '<div class="alert alert-message">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				'.$message.
			'</div>';
}

function alert_info($message='')
{
	return '<div class="alert alert-info">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				'.$message.
			'</div>';
}

/**
|----------------------------------------------------------------------------------|
| label
|----------------------------------------------------------------------------------|
*/

function label_default($message='')
{
	return '<span class="label label-default">'.$message.'</span>';
}

function label_primary($message='')
{
	return '<span class="label label-primary">'.$message.'</span>';
}

function label_success($message='')
{
	return '<span class="label label-success">'.$message.'</span>'; 
}

function label_info($message='')
{
	return '<span class="label label-info">'.$message.'</span>'; 
}

function label_warning($message='')
{
	return '<span class="label label-warning">'.$message.'</span>'; 
}

function label_danger($message='')
{
	return '<span class="label label-danger">'.$message.'</span>'; 
}


/**
|----------------------------------------------------------------------------------|
| glyphicon
|----------------------------------------------------------------------------------|
*/

function gl_asterisk()
{
	return '<span class="glyphicon glyphicon-asterisk"></span>';
}

function gl_plus()
{
	return '<span class="glyphicon glyphicon-plus"></span>';
}

function gl_eur()
{
	return '<span class="glyphicon glyphicon-eur"></span>';
}

function gl_euro()
{
	return '<span class="glyphicon glyphicon-euro"></span>';
}

function gl_minus()
{
	return '<span class="glyphicon glyphicon-minus"></span>';
}

function gl_cloud()
{
	return '<span class="glyphicon glyphicon-cloud"></span>';
}

function gl_envelope()
{
	return '<span class="glyphicon glyphicon-envelope"></span>';
}

function gl_pencil()
{
	return '<span class="glyphicon glyphicon-pencil"></span>';
}

function gl_glass()
{
	return '<span class="glyphicon glyphicon-glass"></span>';
}

function gl_music()
{
	return '<span class="glyphicon glyphicon-music"></span>';
}

function gl_search()
{
	return '<span class="glyphicon glyphicon-search"></span>';
}

function gl_heart()
{
	return '<span class="glyphicon glyphicon-heart"></span>';
}

function gl_star()
{
	return '<span class="glyphicon glyphicon-star"></span>';
}

function gl_star_empty()
{
	return '<span class="glyphicon glyphicon-star-empty"></span>';
}

function gl_user()
{
	return '<span class="glyphicon glyphicon-user"></span>';
}

function gl_film()
{
	return '<span class="glyphicon glyphicon-film"></span>';
}

function gl_th_large()
{
	return '<span class="glyphicon glyphicon-th-large"></span>';
}

function gl_th()
{
	return '<span class="glyphicon glyphicon-th"></span>';
}

function gl_th_list()
{
	return '<span class="glyphicon glyphicon-th-list"></span>';
}

function gl_ok()
{
	return '<span class="glyphicon glyphicon-ok"></span>';
}

function gl_remove()
{
	return '<span class="glyphicon glyphicon-remove"></span>';
}

function gl_zoom_in()
{
	return '<span class="glyphicon glyphicon-zoom-in"></span>';
}

function gl_zoom_out()
{
	return '<span class="glyphicon glyphicon-zoom-out"></span>';
}

function gl_off()
{
	return '<span class="glyphicon glyphicon-off"></span>';
}

function gl_signal()
{
	return '<span class="glyphicon glyphicon-signal"></span>';
}

function gl_cog()
{
	return '<span class="glyphicon glyphicon-cog"></span>';
}

function gl_trash()
{
	return '<span class="glyphicon glyphicon-trash"></span>';
}

function gl_home()
{
	return '<span class="glyphicon glyphicon-home"></span>';
}

function gl_file()
{
	return '<span class="glyphicon glyphicon-file"></span>';
}

function gl_time()
{
	return '<span class="glyphicon glyphicon-time"></span>';
}

function gl_road()
{
	return '<span class="glyphicon glyphicon-road"></span>';
}

function gl_download_alt()
{
	return '<span class="glyphicon glyphicon-download-alt"></span>';
}

function gl_download()
{
	return '<span class="glyphicon glyphicon-download"></span>';
}

function gl_upload()
{
	return '<span class="glyphicon glyphicon-upload"></span>';
}

function gl_inbox()
{
	return '<span class="glyphicon glyphicon-inbox"></span>';
}

function gl_play_circle()
{
	return '<span class="glyphicon glyphicon-play-circle"></span>';
}

function gl_repeat()
{
	return '<span class="glyphicon glyphicon-repeat"></span>';
}

function gl_refresh()
{
	return '<span class="glyphicon glyphicon-refresh"></span>';
}

function gl_list_alt()
{
	return '<span class="glyphicon glyphicon-list-alt"></span>';
}

function gl_lock()
{
	return '<span class="glyphicon glyphicon-lock"></span>';
}

function gl_flag()
{
	return '<span class="glyphicon glyphicon-flag"></span>';
}

function gl_headphones()
{
	return '<span class="glyphicon glyphicon-headphones"></span>';
}

function gl_volume_off()
{
	return '<span class="glyphicon glyphicon-volume-off"></span>';
}

function gl_volume_down()
{
	return '<span class="glyphicon glyphicon-volume-down"></span>';
}

function gl_volume_up()
{
	return '<span class="glyphicon glyphicon-volume-up"></span>';
}

function gl_qrcode()
{
	return '<span class="glyphicon glyphicon-qrcode"></span>';
}

function gl_barcode()
{
	return '<span class="glyphicon glyphicon-barcode"></span>';
}

function gl_tag()
{
	return '<span class="glyphicon glyphicon-tag"></span>';
}

function gl_tags()
{
	return '<span class="glyphicon glyphicon-tags"></span>';
}

function gl_book()
{
	return '<span class="glyphicon glyphicon-book"></span>';
}

function gl_bookmark()
{
	return '<span class="glyphicon glyphicon-bookmark"></span>';
}

function gl_print ()
{
	return '<span class="glyphicon glyphicon-print"></span>';
}

function gl_camera()
{
	return '<span class="glyphicon glyphicon-camera"></span>';
}

function gl_font()
{
	return '<span class="glyphicon glyphicon-font"></span>';
}

function gl_bold()
{
	return '<span class="glyphicon glyphicon-bold"></span>';
}

function gl_italic()
{
	return '<span class="glyphicon glyphicon-italic"></span>';
}

function gl_text_height()
{
	return '<span class="glyphicon glyphicon-text-height"></span>';
}

function gl_text_width()
{
	return '<span class="glyphicon glyphicon-text-width"></span>';
}

function gl_align_left()
{
	return '<span class="glyphicon glyphicon-align-left"></span>';
}

function gl_align_center()
{
	return '<span class="glyphicon glyphicon-align-center"></span>';
}

function gl_align_right()
{
	return '<span class="glyphicon glyphicon-align-right"></span>';
}

function gl_align_justify()
{
	return '<span class="glyphicon glyphicon-align-justify"></span>';
}

function gl_list()
{
	return '<span class="glyphicon glyphicon-list"></span>';
}

function gl_indent_left()
{
	return '<span class="glyphicon glyphicon-indent-left"></span>';
}

function gl_indent_right()
{
	return '<span class="glyphicon glyphicon-indent-right"></span>';
}

function gl_facetime_video()
{
	return '<span class="glyphicon glyphicon-facetime-video"></span>';
}

function gl_picture()
{
	return '<span class="glyphicon glyphicon-picture"></span>';
}

function gl_map_marker()
{
	return '<span class="glyphicon glyphicon-map-marker"></span>';
}

function gl_adjust()
{
	return '<span class="glyphicon glyphicon-adjust"></span>';
}

function gl_tint()
{
	return '<span class="glyphicon glyphicon-tint"></span>';
}

function gl_edit()
{
	return '<span class="glyphicon glyphicon-edit"></span>';
}

function gl_share()
{
	return '<span class="glyphicon glyphicon-share"></span>';
}

function gl_check()
{
	return '<span class="glyphicon glyphicon-check"></span>';
}

function gl_move()
{
	return '<span class="glyphicon glyphicon-move"></span>';
}

function gl_step_backward()
{
	return '<span class="glyphicon glyphicon-step-backward"></span>';
}

function gl_fast_backward()
{
	return '<span class="glyphicon glyphicon-fast-backward"></span>';
}

function gl_backward()
{
	return '<span class="glyphicon glyphicon-backward"></span>';
}

function gl_play()
{
	return '<span class="glyphicon glyphicon-play"></span>';
}

function gl_pause()
{
	return '<span class="glyphicon glyphicon-pause"></span>';
}

function gl_stop()
{
	return '<span class="glyphicon glyphicon-stop"></span>';
}

function gl_forward()
{
	return '<span class="glyphicon glyphicon-forward"></span>';
}

function gl_fast_forward()
{
	return '<span class="glyphicon glyphicon-fast-forward"></span>';
}

function gl_step_forward()
{
	return '<span class="glyphicon glyphicon-step-forward"></span>';
}

function gl_eject()
{
	return '<span class="glyphicon glyphicon-eject"></span>';
}

function gl_chevron_left()
{
	return '<span class="glyphicon glyphicon-chevron-left"></span>';
}

function gl_chevron_right()
{
	return '<span class="glyphicon glyphicon-chevron-right"></span>';
}

function gl_plus_sign()
{
	return '<span class="glyphicon glyphicon-plus-sign"></span>';
}

function gl_minus_sign()
{
	return '<span class="glyphicon glyphicon-minus-sign"></span>';
}

function gl_remove_sign()
{
	return '<span class="glyphicon glyphicon-remove-sign"></span>';
}

function gl_ok_sign()
{
	return '<span class="glyphicon glyphicon-ok-sign"></span>';
}

function gl_question_sign()
{
	return '<span class="glyphicon glyphicon-question-sign"></span>';
}

function gl_info_sign()
{
	return '<span class="glyphicon glyphicon-info-sign"></span>';
}

function gl_screenshot()
{
	return '<span class="glyphicon glyphicon-screenshot"></span>';
}

function gl_remove_circle()
{
	return '<span class="glyphicon glyphicon-remove-circle"></span>';
}

function gl_ok_circle()
{
	return '<span class="glyphicon glyphicon-ok-circle"></span>';
}

function gl_ban_circle()
{
	return '<span class="glyphicon glyphicon-ban-circle"></span>';
}

function gl_arrow_left()
{
	return '<span class="glyphicon glyphicon-arrow-left"></span>';
}

function gl_arrow_right()
{
	return '<span class="glyphicon glyphicon-arrow-right"></span>';
}

function gl_arrow_up()
{
	return '<span class="glyphicon glyphicon-arrow-up"></span>';
}

function gl_arrow_down()
{
	return '<span class="glyphicon glyphicon-arrow-down"></span>';
}

function gl_share_alt()
{
	return '<span class="glyphicon glyphicon-share-alt"></span>';
}

function gl_resize_full()
{
	return '<span class="glyphicon glyphicon-resize-full"></span>';
}

function gl_resize_small()
{
	return '<span class="glyphicon glyphicon-resize-small"></span>';
}

function gl_exclamation_sign()
{
	return '<span class="glyphicon glyphicon-exclamation-sign"></span>';
}

function gl_gift()
{
	return '<span class="glyphicon glyphicon-gift"></span>';
}

function gl_leaf()
{
	return '<span class="glyphicon glyphicon-leaf"></span>';
}

function gl_fire()
{
	return '<span class="glyphicon glyphicon-fire"></span>';
}

function gl_eye_open()
{
	return '<span class="glyphicon glyphicon-eye-open"></span>';
}

function gl_eye_close()
{
	return '<span class="glyphicon glyphicon-eye-close"></span>';
}

function gl_warning_sign()
{
	return '<span class="glyphicon glyphicon-warning-sign"></span>';
}

function gl_plane()
{
	return '<span class="glyphicon glyphicon-plane"></span>';
}

function gl_calendar()
{
	return '<span class="glyphicon glyphicon-calendar"></span>';
}

function gl_random()
{
	return '<span class="glyphicon glyphicon-random"></span>';
}

function gl_comment()

{
	return '<span class="glyphicon glyphicon-comment"></span>';
}

function gl_magnet()
{
	return '<span class="glyphicon glyphicon-magnet"></span>';
}

function gl_chevron_up()
{
	return '<span class="glyphicon glyphicon-chevron-up"></span>';
}

function gl_chevron_down()
{
	return '<span class="glyphicon glyphicon-chevron-down"></span>';
}

function gl_retweet()
{
	return '<span class="glyphicon glyphicon-retweet"></span>';
}

function gl_shopping_cart()
{
	return '<span class="glyphicon glyphicon-shopping-cart"></span>';
}

function gl_folder_close()
{
	return '<span class="glyphicon glyphicon-folder-close"></span>';
}

function gl_folder_open()
{
	return '<span class="glyphicon glyphicon-folder-open"></span>';
}

function gl_resize_vertical()
{
	return '<span class="glyphicon glyphicon-resize-vertical"></span>';
}

function gl_resize_horizontal()
{
	return '<span class="glyphicon glyphicon-resize-horizontal"></span>';
}

function gl_hdd()
{
	return '<span class="glyphicon glyphicon-hdd"></span>';
}

function gl_bullhorn()
{
	return '<span class="glyphicon glyphicon-bullhorn"></span>';
}

function gl_bell()
{
	return '<span class="glyphicon glyphicon-bell"></span>';
}

function gl_certificate()
{
	return '<span class="glyphicon glyphicon-certificate"></span>';
}

function gl_thumbs_up()
{
	return '<span class="glyphicon glyphicon-thumbs-up"></span>';
}

function gl_thumbs_down()
{
	return '<span class="glyphicon glyphicon-thumbs-down"></span>';
}

function gl_hand_right()
{
	return '<span class="glyphicon glyphicon-hand-right"></span>';
}

function gl_hand_left()
{
	return '<span class="glyphicon glyphicon-hand-left"></span>';
}

function gl_hand_up()
{
	return '<span class="glyphicon glyphicon-hand-up"></span>';
}

function gl_hand_down()
{
	return '<span class="glyphicon glyphicon-hand-down"></span>';
}

function gl_circle_arrow_right()
{
	return '<span class="glyphicon glyphicon-circle-arrow-right"></span>';
}

function gl_circle_arrow_left()
{
	return '<span class="glyphicon glyphicon-circle-arrow-left"></span>';
}

function gl_circle_arrow_up()
{
	return '<span class="glyphicon glyphicon-circle-arrow-up"></span>';
}

function gl_circle_arrow_down()
{
	return '<span class="glyphicon glyphicon-circle-arrow-down"></span>';
}

function gl_globe()
{
	return '<span class="glyphicon glyphicon-globe"></span>';
}

function gl_wrench()
{
	return '<span class="glyphicon glyphicon-wrench"></span>';
}

function gl_tasks()
{
	return '<span class="glyphicon glyphicon-tasks"></span>';
}

function gl_filter()
{
	return '<span class="glyphicon glyphicon-filter"></span>';
}

function gl_briefcase()
{
	return '<span class="glyphicon glyphicon-briefcase"></span>';
}

function gl_fullscreen()
{
	return '<span class="glyphicon glyphicon-fullscreen"></span>';
}

function gl_dashboard()
{
	return '<span class="glyphicon glyphicon-dashboard"></span>';
}

function gl_paperclip()
{
	return '<span class="glyphicon glyphicon-paperclip"></span>';
}

function gl_heart_empty()
{
	return '<span class="glyphicon glyphicon-heart-empty"></span>';
}

function gl_link()
{
	return '<span class="glyphicon glyphicon-link"></span>';
}

function gl_phone()
{
	return '<span class="glyphicon glyphicon-phone"></span>';
}

function gl_pushpin()
{
	return '<span class="glyphicon glyphicon-pushpin"></span>';
}

function gl_usd()
{
	return '<span class="glyphicon glyphicon-usd"></span>';
}

function gl_gbp()
{
	return '<span class="glyphicon glyphicon-gbp"></span>';
}

function gl_sort()
{
	return '<span class="glyphicon glyphicon-sort"></span>';
}

function gl_sort_by_alphabet()
{
	return '<span class="glyphicon glyphicon-sort-by-alphabet"></span>';
}

function gl_sort_by_alphabet_alt()
{
	return '<span class="glyphicon glyphicon-sort-by-alphabet-alt"></span>';
}

function gl_sort_by_order()
{
	return '<span class="glyphicon glyphicon-sort-by-order"></span>';
}

function gl_sort_by_order_alt()
{
	return '<span class="glyphicon glyphicon-sort-by-order-alt"></span>';
}

function gl_sort_by_attributes()
{
	return '<span class="glyphicon glyphicon-sort-by-attributes"></span>';
}

function gl_sort_by_attributes_alt()
{
	return '<span class="glyphicon glyphicon-sort-by-attributes-alt"></span>';
}

function gl_unchecked()
{
	return '<span class="glyphicon glyphicon-unchecked"></span>';
}

function gl_expand()
{
	return '<span class="glyphicon glyphicon-expand"></span>';
}

function gl_collapse_down()
{
	return '<span class="glyphicon glyphicon-collapse-down"></span>';
}

function gl_collapse_up()
{
	return '<span class="glyphicon glyphicon-collapse-up"></span>';
}

function gl_log_in()
{
	return '<span class="glyphicon glyphicon-log-in"></span>';
}

function gl_flash()
{
	return '<span class="glyphicon glyphicon-flash"></span>';
}

function gl_log_out()
{
	return '<span class="glyphicon glyphicon-log-out"></span>';
}

function gl_new_window()
{
	return '<span class="glyphicon glyphicon-new-window"></span>';
}

function gl_record()
{
	return '<span class="glyphicon glyphicon-record"></span>';
}

function gl_save()
{
	return '<span class="glyphicon glyphicon-save"></span>';
}

function gl_open()
{
	return '<span class="glyphicon glyphicon-open"></span>';
}

function gl_saved()
{
	return '<span class="glyphicon glyphicon-saved"></span>';
}

function gl_import()
{
	return '<span class="glyphicon glyphicon-import"></span>';
}

function gl_export()
{
	return '<span class="glyphicon glyphicon-export"></span>';
}

function gl_send()
{
	return '<span class="glyphicon glyphicon-send"></span>';
}

function gl_floppy_disk()
{
	return '<span class="glyphicon glyphicon-floppy-disk"></span>';
}

function gl_floppy_saved()
{
	return '<span class="glyphicon glyphicon-floppy-saved"></span>';
}

function gl_floppy_remove()
{
	return '<span class="glyphicon glyphicon-floppy-remove"></span>';
}

function gl_floppy_save()
{
	return '<span class="glyphicon glyphicon-floppy-save"></span>';
}

function gl_floppy_open()
{
	return '<span class="glyphicon glyphicon-floppy-open"></span>';
}

function gl_credit_card()
{
	return '<span class="glyphicon glyphicon-credit-card"></span>';
}

function gl_transfer()
{
	return '<span class="glyphicon glyphicon-transfer"></span>';
}

function gl_cutlery()
{
	return '<span class="glyphicon glyphicon-cutlery"></span>';
}

function gl_header()
{
	return '<span class="glyphicon glyphicon-header"></span>';
}

function gl_compressed()
{
	return '<span class="glyphicon glyphicon-compressed"></span>';
}

function gl_earphone()
{
	return '<span class="glyphicon glyphicon-earphone"></span>';
}

function gl_phone_alt()
{
	return '<span class="glyphicon glyphicon-phone-alt"></span>';
}

function gl_tower()
{
	return '<span class="glyphicon glyphicon-tower"></span>';
}

function gl_stats()
{
	return '<span class="glyphicon glyphicon-stats"></span>';
}

function gl_sd_video()
{
	return '<span class="glyphicon glyphicon-sd-video"></span>';
}

function gl_hd_video()
{
	return '<span class="glyphicon glyphicon-hd-video"></span>';
}

function gl_subtitles()
{
	return '<span class="glyphicon glyphicon-subtitles"></span>';
}

function gl_sound_stereo()
{
	return '<span class="glyphicon glyphicon-sound-stereo"></span>';
}

function gl_sound_dolby()
{
	return '<span class="glyphicon glyphicon-sound-dolby"></span>';
}

function gl_sound_5_1()
{
	return '<span class="glyphicon glyphicon-sound-5-1"></span>';
}

function gl_sound_6_1()
{
	return '<span class="glyphicon glyphicon-sound-6-1"></span>';
}

function gl_sound_7_1()
{
	return '<span class="glyphicon glyphicon-sound-7-1"></span>';
}

function gl_copyright_mark()
{
	return '<span class="glyphicon glyphicon-copyright-mark"></span>';
}

function gl_registration_mark()
{
	return '<span class="glyphicon glyphicon-registration-mark"></span>';
}

function gl_cloud_download()
{
	return '<span class="glyphicon glyphicon-cloud-download"></span>';
}

function gl_cloud_upload()
{
	return '<span class="glyphicon glyphicon-cloud-upload"></span>';
}

function gl_tree_conifer()
{
	return '<span class="glyphicon glyphicon-tree-conifer"></span>';
}

function gl_tree_deciduous()
{
	return '<span class="glyphicon glyphicon-tree-deciduous"></span>';
}

function gl_cd()
{
	return '<span class="glyphicon glyphicon-cd"></span>';
}

function gl_save_file()
{
	return '<span class="glyphicon glyphicon-save-file"></span>';
}

function gl_open_file()
{
	return '<span class="glyphicon glyphicon-open-file"></span>';
}

function gl_level_up()
{
	return '<span class="glyphicon glyphicon-level-up"></span>';
}

function gl_copy()
{
	return '<span class="glyphicon glyphicon-copy"></span>';
}

function gl_paste()
{
	return '<span class="glyphicon glyphicon-paste"></span>';
}

function gl_alert()
{
	return '<span class="glyphicon glyphicon-alert"></span>';
}

function gl_equalizer()
{
	return '<span class="glyphicon glyphicon-equalizer"></span>';
}

function gl_king()
{
	return '<span class="glyphicon glyphicon-king"></span>';
}

function gl_queen()
{
	return '<span class="glyphicon glyphicon-queen"></span>';
}

function gl_pawn()
{
	return '<span class="glyphicon glyphicon-pawn"></span>';
}

function gl_bishop()
{
	return '<span class="glyphicon glyphicon-bishop"></span>';
}

function gl_knight()
{
	return '<span class="glyphicon glyphicon-knight"></span>';
}

function gl_baby_formula()
{
	return '<span class="glyphicon glyphicon-baby-formula"></span>';
}

function gl_tent()
{
	return '<span class="glyphicon glyphicon-tent"></span>';
}

function gl_blackboard()
{
	return '<span class="glyphicon glyphicon-blackboard"></span>';
}

function gl_bed()
{
	return '<span class="glyphicon glyphicon-bed"></span>';
}

function gl_apple()
{
	return '<span class="glyphicon glyphicon-apple"></span>';
}

function gl_erase()
{
	return '<span class="glyphicon glyphicon-erase"></span>';
}

function gl_hourglass()
{
	return '<span class="glyphicon glyphicon-hourglass"></span>';
}

function gl_lamp()
{
	return '<span class="glyphicon glyphicon-lamp"></span>';
}

function gl_duplicate()
{
	return '<span class="glyphicon glyphicon-duplicate"></span>';
}

function gl_piggy_bank()
{
	return '<span class="glyphicon glyphicon-piggy-bank"></span>';
}

function gl_scissors()
{
	return '<span class="glyphicon glyphicon-scissors"></span>';
}

function gl_bitcoin()
{
	return '<span class="glyphicon glyphicon-bitcoin"></span>';
}

function gl_btc()
{
	return '<span class="glyphicon glyphicon-btc"></span>';
}

function gl_xbt()
{
	return '<span class="glyphicon glyphicon-xbt"></span>';
}

function gl_yen()
{
	return '<span class="glyphicon glyphicon-yen"></span>';
}

function gl_jpy()
{
	return '<span class="glyphicon glyphicon-jpy"></span>';
}

function gl_ruble()
{
	return '<span class="glyphicon glyphicon-ruble"></span>';
}

function gl_rub()
{
	return '<span class="glyphicon glyphicon-rub"></span>';
}

function gl_scale()
{
	return '<span class="glyphicon glyphicon-scale"></span>';
}

function gl_ice_lolly()
{
	return '<span class="glyphicon glyphicon-ice-lolly"></span>';
}

function gl_ice_lolly_tasted()
{
	return '<span class="glyphicon glyphicon-ice-lolly-tasted"></span>';
}

function gl_education()
{
	return '<span class="glyphicon glyphicon-education"></span>';
}

function gl_option_horizontal()
{
	return '<span class="glyphicon glyphicon-option-horizontal"></span>';
}

function gl_option_vertical()
{
	return '<span class="glyphicon glyphicon-option-vertical"></span>';
}

function gl_menu_hamburger()
{
	return '<span class="glyphicon glyphicon-menu-hamburger"></span>';
}

function gl_modal_window()
{
	return '<span class="glyphicon glyphicon-modal-window"></span>';
}

function gl_oil()
{
	return '<span class="glyphicon glyphicon-oil"></span>';
}

function gl_grain()
{
	return '<span class="glyphicon glyphicon-grain"></span>';
}

function gl_sunglasses()
{
	return '<span class="glyphicon glyphicon-sunglasses"></span>';
}

function gl_text_size()
{
	return '<span class="glyphicon glyphicon-text-size"></span>';
}

function gl_text_color()
{
	return '<span class="glyphicon glyphicon-text-color"></span>';
}

function gl_text_background()
{
	return '<span class="glyphicon glyphicon-text-background"></span>';
}

function gl_object_align_top()
{
	return '<span class="glyphicon glyphicon-object-align-top"></span>';
}

function gl_object_align_bottom()
{
	return '<span class="glyphicon glyphicon-object-align-bottom"></span>';
}

function gl_object_align_horizontal()
{
	return '<span class="glyphicon glyphicon-object-align-horizontal"></span>';
}

function gl_object_align_left()
{
	return '<span class="glyphicon glyphicon-object-align-left"></span>';
}

function gl_object_align_vertical()
{
	return '<span class="glyphicon glyphicon-object-align-vertical"></span>';
}

function gl_object_align_right()
{
	return '<span class="glyphicon glyphicon-object-align-right"></span>';
}

function gl_triangle_right()
{
	return '<span class="glyphicon glyphicon-triangle-right"></span>';
}

function gl_triangle_left()
{
	return '<span class="glyphicon glyphicon-triangle-left"></span>';
}

function gl_triangle_bottom()
{
	return '<span class="glyphicon glyphicon-triangle-bottom"></span>';
}

function gl_triangle_top()
{
	return '<span class="glyphicon glyphicon-triangle-top"></span>';
}

function gl_console()
{
	return '<span class="glyphicon glyphicon-console"></span>';
}

function gl_superscript()
{
	return '<span class="glyphicon glyphicon-superscript"></span>';
}

function gl_subscript()
{
	return '<span class="glyphicon glyphicon-subscript"></span>';
}

function gl_menu_left()
{
	return '<span class="glyphicon glyphicon-menu-left"></span>';
}

function gl_menu_right()
{
	return '<span class="glyphicon glyphicon-menu-right"></span>';
}

function gl_menu_down()
{
	return '<span class="glyphicon glyphicon-menu-down"></span>';
}

function gl_menu_up()
{
	return '<span class="glyphicon glyphicon-menu-up"></span>';
}