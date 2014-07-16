// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require ckeditor/init
//= require_tree .
//= require jquery-fileupload/basic
//= require jquery-fileupload/vendor/tmpl


function responsiveNavigation() {
    var winWidth = $(window).width(),
        nav = $('.navigation');

    if (winWidth <= 580) {
        nav.hide();
    } else {
        nav.show();
    }
}

$(document).ready(function () {
    $("#videos_search input").keyup(function () {
        $.get($("#videos_search").attr("action"), $("#videos_search").serialize(), null, "script");
        return false;
    });

    $("#photos_search input").keyup(function () {
        $.get($("#photos_search").attr("action"), $("#photos_search").serialize(), null, "script");
        return false;
    });

    $("#posts_search input").keyup(function () {
        $.get($("#posts_search").attr("action"), $("#posts_search").serialize(), null, "script");
        return false;
    });

    $('.slider').bxSlider({
        autoHover: true,
        pager: false,
        controls: false,
        auto: true,
        pause: 4000
    });

    $('.mobile-menu').click(function () {
        $('.navigation').toggle();
    });

    $('.search-form input').keyup(function () {
        console.log($(".search-form").attr("action"));
        $.get($(".search-form").attr("action"), $(".search-form").serialize(), null, "script");
        return false;

    });

    $(window).resize(function () {
        responsiveNavigation();
    });

    responsiveNavigation();

    $('#edit_landing_page_1 .remove_fields').on('click', function (event) {
        console.log($(this).prev('input[type=hidden]'));
        $(this).prev('input[type=hidden]').val('1');
        $(this).closest('fieldset').hide();
        event.preventDefault();
    });

    $('#edit_landing_page_1 .add_fields').on('click', function (event) {
        time = new Date().getTime();
        regexp = new RegExp($(this).data('id'), 'g');
        $(this).before($(this).data('fields').replace(regexp, time));
        event.preventDefault()
    });

    $('#new_image').fileupload({
        dataType: "script",
        /*add: function (e, data) {
            data.context = $(tmpl("template-upload", data.files[0]));
            $('#new_image').append(data.context);
            data.submit()
        },*/
        add: function (e, data) {
            data.context = $('<p/>').text('Uploading...').appendTo('#new_image');
            data.submit();
        },
        done: function (e, data) {
            data.context.text('Upload finished.');
        }
    })
})
;