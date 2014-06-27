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
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require jquery-fileupload/basic
//= require jquery-fileupload/vendor/tmpl


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
});