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
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
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

    if (winWidth <= 580) {
        nav.hide();
    } else {
        nav.show();
    }
}


$(document).ready(function () {
    $('textarea.ckeditor').ckeditor();

    $('#gal1').galereya({
        // spacing between cells of the masonry grid
        spacing: 3,

        // waving visual effect
        wave: false,

        // waving visual effect timeout duration
        waveTimeout: 300,

        // special CSS modifier for the gallery
        modifier: '',

        // speed of the slide show
        //slideShowSpeed: 10000,

        // speed of appearance of cells
        cellFadeInSpeed: 200,


        // set to true, if you don't want to show the slider on a cell click.
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
        nextSelector: $('.slider-controler.next'),
        prevSelector: $('.slider-controler.prev'),
        nextText: '',
        prevText: ''
    });

    $('.mobile-menu').click(function () {
        $('.navigation').toggle();
    });


    $(window).resize(function () {
        responsiveNavigation();
    });

    responsiveNavigation();

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

    $('#new_banner').fileupload({
        dataType: "script",
        /*add: function (e, data) {
         data.context = $(tmpl("template-upload", data.files[0]));
         $('#new_image').append(data.context);
         data.submit()
         },*/
        add: function (e, data) {
            data.context = $('<p/>').text('Uploading...').appendTo('#new_banner');
            data.submit();
        },
        done: function (e, data) {
            data.context.text('Upload finished.');
        }
    });

    $('.validate-form-js').validate({
        errorPlacement: function(error, element) {
            var container = element.closest('.col-sm-10');
            container.append(error);
        },
    });

    collage();
    var resizeTimer = null;
    
    $(window).bind('resize', function () {
        if (resizeTimer) clearTimeout(resizeTimer);
        resizeTimer = setTimeout(collage, 200);
    });

    function collage() {
        $('.Collage').removeWhitespace().collagePlus(
            {
                'fadeSpeed': 2000,
                'targetHeight': 200
            }
        ).collageCaption();
    };

});

