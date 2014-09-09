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
//= require jquery.galereya
//= require jquery_ujs
//= require ckeditor/init
//= require jquery
//= require bootstrap-sprockets
//= require_tree .
//= require jquery-fileupload/basic
//= require jquery-fileupload/vendor/tmpl
//= require ckeditor/adapters/jquery
//= require bootstrap-datepicker
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.es.js

//= require jquery.collageCaption
//= require jquery.collagePlus
//= require jquery.removeWhitespace


function responsiveNavigation() {
    var winWidth = $(window).width(),
        nav = $('.navigation');

    nav.removeClass('active');
    if (winWidth <= 840) {
        nav.hide();
    } else {
        nav.show();

    }
}

function bindCollage() {
    setTimeout(function() {
        $('.Collage').removeWhitespace().collagePlus({
            'fadeSpeed'       : "fast",
            'effect'          : 'default',
            'direction'       : 'horizontal',
            'allowPartialLastRow' : false
        });
    }, 800);
}

var resizeTimer = null;

$(window).resize(function () {
    responsiveNavigation();
    bindCollage();
});

$(document).on("ready page:load", function() {
    $('textarea.ckeditor').ckeditor();

    responsiveNavigation();
    bindCollage();

    $('#gal1').galereya({
        spacing: 3,
        wave: false,
        waveTimeout: 300,
        modifier: '',
        cellFadeInSpeed: 200,
        disableSliderOnClick: true
    });

    $(".datepicker").datepicker({
        format: 'dd-mm-yyyy',
        language: 'es',
        autoclose: true,
        minViewMode: 'days',
        todayHighlight: true,
        forceParse: false,
    }).on('changeDate', function(ev){
        $(this).valid();
    });


    $('.slider').bxSlider({
        autoHover: true,
        pager: false,
        controls: true,
        auto: false,
        pause: 4000,
        pager: true,
        pagerSelector: $('.slider-pager'),
        nextText: '',
        prevText: ''
    });

    $('.mobile-menu').click(function () {
        var navigation = $('.navigation');

        if ( navigation.hasClass('active')) {
            navigation.removeClass('active');
            navigation.hide();
        } else {
            navigation.addClass('active');
            navigation.show();
        }
    });

    $('#banners-items').on('click', '.remove_fields', function (event) {
        $(this).prev('input[type=hidden]').val('1');
        $(this).closest('fieldset').hide();
        event.preventDefault();
        return false;
    });

    $('#edit_landing_page_1').on('click', '.add_fields', function (event) {
        time = new Date().getTime();
        regexp = new RegExp($(this).data('id'), 'g');
        $('#banners-items').before($(this).data('fields').replace(regexp, time));
        event.preventDefault();
        return false;
    });

    /*$('#new_banner').fileupload({
        dataType: "script",
        add: function (e, data) {
            data.context = $('<p/>').text('Uploading...').appendTo('#new_banner');
            data.submit();
        },
        done: function (e, data) {
            data.context.text('Upload finished.');
        }
    });*/

    $('.validate-form-js').validate({
        errorPlacement: function(error, element) {
            var container = element.closest('.col-sm-10');
            container.append(error);
        }
    });

    $('.image-gallery').mouseenter(function(event) {
        $(this).find('.image-cover').fadeIn(400);
    }).mouseleave(function(event) {
        $(this).find('.image-cover').fadeOut(400);
    });
});

