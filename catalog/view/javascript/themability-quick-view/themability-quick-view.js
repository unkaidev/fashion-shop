/**
 * Created by Themability.
 */
function loadProduct(url) {
    //load frame
    $('#dialog').remove();
    $('body').css('overflow', 'hidden');
    var window_w = $(window).width();
    var window_h = $(window).height();
    if (window_w < 650) {
        var MIN_W = 10;
    } else {
        var MIN_W = 640;
    }
    var MIN_H = 480;
    var h = Math.max(window_h * 3 / 4, MIN_H) | 0;
    var w = Math.max(window_w * 3 / 4, MIN_W) | 0;
    $('body').append('<div id="dialog" style="padding:3px;">' +
        '<iframe id="productFormIframe" src="' + url + '" style="opacity:0;padding: 0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe>' +
        '</div>');
    $('#dialog').dialog({
        title: '',
        width: w,
        height: h,
        resizable: false,
        modal: true
    });
    $(".ui-dialog").css("z-index", "3000");
    $('#productFormIframe').load(function() {
        var cnt = $('#productFormIframe').contents();
        cnt.find('#content .row,#content h3,.owl-theme,.server-box,nav,.categories.product.row,footer,.footer-info,.footer-social,.breadcrumb,.top-banner,#main-menu').hide();
        cnt.find('#content .row:first-child').show();
        cnt.find('header').html('<br /><br /><style>.alert.alert-dismissible a{pointer-events:none;}</style>');
        $('#productFormIframe').css('opacity', 1);
    });
    $('.ui-dialog-titlebar-close').on('click', function() {
        $('body').css('overflow', 'auto');
    });


}

function setModalMaxHeight(element) {
    this.$element = $(element);
    this.$content = this.$element.find('.modal-content');
    var borderWidth = this.$content.outerHeight() - this.$content.innerHeight();
    var dialogMargin = $(window).width() < 768 ? 15 : 60;
    var contentHeight = $(window).height() - (dialogMargin + borderWidth);
    var headerHeight = this.$element.find('.modal-header').outerHeight() || 0;
    var footerHeight = this.$element.find('.modal-footer').outerHeight() || 0;
    var maxHeight = contentHeight - (headerHeight + footerHeight);

    this.$content.css({
        'overflow': 'hidden'
    });

    this.$element
        .find('.modal-body').css({
            'max-height': maxHeight,
            'overflow-y': 'auto'
        });
}

$(window).resize(function() {
    if ($('.modal.in').length != 0) {
        setModalMaxHeight($('.modal.in'));
    }
});
(function($) {
    //Insert button
    setTimeout(function() {
        var _products = $('.product-layout');
        $.each(_products, function(k, v) {
            var _link = $(v).find('.image a').attr('href');
            $(v).append('<span class="v-view qu" data-url="' + _link + '"><i class="fa fa-eye"></i> Quick View</span>');
        });
    }, 800);
    //quick view
    $(document).on('click', '.v-view', function() {
        loadProduct($(this).attr('data-url') + '&active=pop');
    });
})(jQuery);