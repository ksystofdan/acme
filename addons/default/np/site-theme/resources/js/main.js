$(document).foundation();

$(document).ready(function() {

    $(window).on('load resize scroll', function () {
        $('.lang-select-hold-page').slideUp(1000);
    });

    $(window).on('load', function () {
        var header_height = $('header').outerHeight();
        $('.mobile-menu-hold').css('top', header_height);
    });

    // hamburger click
    $(".hamburger").click(function() {
        if( $(this).hasClass('is-active') ) {
            $(this).removeClass('is-active');
            $('header').removeClass('is-active');
            $('.mobile-menu-hold').removeClass('is-active');
            $('body').removeClass('prev-scroll');
        } else {
            $(this).addClass('is-active');
            $('header').addClass('is-active');
            $('body').addClass('prev-scroll');
            setTimeout(function(){
                $('.mobile-menu-hold').addClass('is-active');
            }, 500);
        }
    });

    $(".header-lang span").click(function() {
        if( $(this).hasClass('is-active') ) {
            $(this).removeClass('is-active');
            $(".header-lang ul").slideUp(300);
        } else {
            $(this).addClass('is-active')
            $(".header-lang ul").slideDown(300);
        }
    });
    $(document).mouseup(function (e) {
        if ($(e.target).closest(".header-lang").length === 0) {
            $(".header-lang ul").slideUp(300);
            $(".header-lang span").removeClass('is-active');
        }

        if ($(e.target).closest(".about-page-partners-section-list-tooltip-trigger").length === 0) {
            $(".about-page-partners-section-list ul.is-active").removeClass('is-active');
            $(".about-page-partners-section-list ul li.is-active").removeClass('is-active');
            $(".about-page-partners-section-list-tooltip-hold.is-active").removeClass('is-active');
        }

        if ($(e.target).closest(".about-page-map-tooltip").length === 0) {
            $(".about-page-map-tooltip.is-active").removeClass('is-active');
        }
    });

    $(".mobile-menu-nav > ul > li.has-children > a, .mobile-menu-nav > ul > li.has-children > span").click(function() {
        if( $(this).parent().hasClass('is-active') ) {
            $(this).parent().removeClass('is-active');
            $('.menu-nav-subnav').slideUp(300);
        } else {
            $(".mobile-menu-nav > ul > li.has-children").removeClass('is-active');
            $('.menu-nav-subnav').slideUp(300);
            $(this).parent().addClass('is-active');
            $(this).parent().find('.menu-nav-subnav').slideDown(300);
        }
    });

    $(".header-nav > ul > li.has-children").on('click', function(){
        var this_height = $(this).find('.menu-nav-subnav').outerHeight() + $('header').outerHeight() + 30;

        if( $(this).hasClass('is-active') ) {
            $(this).removeClass('is-active');
            $(this).find('.menu-nav-subnav').slideUp(0);
            $('.header-top-line-blue').css('max-height', '7px');
            $('header').removeClass('is-active-2');
        } else {
            $(".header-nav > ul > li.has-children").removeClass('is-active');
            $(".header-nav > ul > li.has-children .menu-nav-subnav").slideUp(0);
            $(this).delay(200).addClass('is-active');
            $(this).find('.menu-nav-subnav').delay(200).slideDown(200);
            $('.header-top-line-blue').css('max-height', this_height);
            $('header').addClass('is-active-2');
        }    
    });
    $(document).mouseup(function (e) {
        if ($(e.target).closest(".header-nav > ul > li.has-children").length === 0) {
            $(".header-nav > ul > li.has-children .menu-nav-subnav").slideUp(0);
            $(".header-nav > ul > li.has-children").removeClass('is-active');
            $('header').removeClass('is-active-2');
            $('.header-top-line-blue').css('max-height', '7px');
        }
    });

    $(".lang-select-hold-lang-nav ul li a").click(function(e) {
        e.preventDefault();
        var href = $(this).attr('href');

        $('.lang-select-hold').addClass('lang-select-hold-hide')
        setTimeout(function() {window.location = href}, 1200);
        return false;
    });

    // Entry table scroll wrap
    $( ".entry table" ).wrap( "<div class='table-scroll'></div>" );

    // #ScrollToTop
    // $("a[href='#top']").click(function() {
    //   $("html, body").animate({ scrollTop: 0 }, "slow");
    //   return false;
    // });

    // #href scroll to
    $('a.scroll-to[href^="#"]').on('click',function (e) {
        e.preventDefault();

        var target = this.hash;
        var $target = $(target);

        $('html, body').stop().animate({
            'scrollTop': $target.offset().top - 100
        }, 700, 'swing', function () {
            // window.location.hash = target;
        });
    });
    
    //product filter sidebar js
    $(".filter-dropdown-trigger").click(function() {
        if( $(this).parent().hasClass('is-active') ) {
            $(this).parent().removeClass('is-active');
            $(this).parent().parent().find('.filter-dropdown-content').slideUp(300);
        } else {
            $(this).parent().addClass('is-active');
            $(this).parent().parent().find('.filter-dropdown-content').slideDown(300);
        }
    });
    $(".filter-dropdown-content ul li .filter-dropdown-checkbox input").on('change', function() {
        $('.product-filter-dropdown').each(function() {
            var filter_checkbox_count = $(this).find('input:checked').length;
            if( filter_checkbox_count > 0 ) {
                $(this).find('.filter-dropdown-trigger-clear').addClass('is-active');
                $(this).find('.filter-dropdown-trigger-text span').text("("+filter_checkbox_count+")" );
                console.log(filter_checkbox_count)
            } else {
                $(this).find('.filter-dropdown-trigger-clear').removeClass('is-active');
                $(this).find('.filter-dropdown-trigger-text span').text('');
            }
        });
    });
    $(".filter-dropdown-trigger-clear").click(function() {
        $(this).removeClass('is-active');
        $(this).parent().parent().find('input').prop('checked',false);
        $(this).parent().parent().find('.filter-dropdown-trigger-text span').text('');
    });

    $(".products-filter-content-right-filter-content-filter-trigger").click(function() {
        if( $(this).parent().hasClass('is-active') ) {
            $(this).parent().removeClass('is-active');
            $(this).parent().find('.products-filter-content-right-filter-content-filter-content').slideUp(300);
        } else {
            $(".products-filter-content-right-filter-content-filter").removeClass('is-active');
            $(".products-filter-content-right-filter-content-filter-content").slideUp(300);
            $(this).parent().addClass('is-active');
            $(this).parent().find('.products-filter-content-right-filter-content-filter-content').slideDown(300);
        }
    });
    $(".filter-dropdown-checkbox-mobile input").on('change', function() {
        var filter_mobile_checkbox_count = $('.filter-dropdown-checkbox-mobile input:checked').length;
        if( filter_mobile_checkbox_count > 0 ) {
            $('.pfcrfcb-count-js span').text('( '+filter_mobile_checkbox_count+' )')
        } else {
            $('.pfcrfcb-count-js span').text('');
        }
    });
    $(".pfcrfcb-clear-js").click(function() {
        $('.filter-dropdown-checkbox-mobile input').prop('checked', false);
        $('.pfcrfcb-count-js span').text('');
    });
    $(".products-filter-content-right-filter-content-top span").click(function() {
        $('.products-filter-content-right-filter-content').slideUp(300);
        $('body').css('overflow', 'auto');
    });
    $(".products-filter-content-right-filter-trigger").click(function() {
        $('.products-filter-content-right-filter-content').slideDown(300);
        $('body').css('overflow', 'hidden');
    });

    //components filter js
    $(".components-page-content-filter-trigger").click(function() {
        if( $(this).parent().hasClass('is-active') ) {
            $(this).parent().removeClass('is-active');
            $(this).parent().find('.components-page-content-filter-list-hold').slideUp(300);
        } else {
            $(this).parent().addClass('is-active');
            $(this).parent().find('.components-page-content-filter-list-hold').slideDown(300);
        }
    });
    $(document).click((event) => {
        if (!$(event.target).closest('.components-page-content-filter').length ) {
            $('.components-page-content-filter-trigger-hold').removeClass('is-active');
            $('.components-page-content-filter-list-hold').slideUp(300);
        }        
    });
    $(".components-page-content-filter-trigger-hold ul").on('click', 'li a',function() {
        $('.components-page-content-filter-trigger-hold ul li a').removeClass('current');
        $(this).addClass('current');
        $('.components-page-content-filter-trigger-hold').removeClass('is-active');
        $('.components-page-content-filter-trigger-hold').find('.components-page-content-filter-list-hold').slideUp(300);
        var thisText = $(this).text();
        var thisSubtext = $(this).parent().find('span').attr('data-id');
        if( thisSubtext && thisSubtext !== '' ) {
            $('.components-page-content-filter-trigger').text(thisText + thisSubtext);
        } else {
            $('.components-page-content-filter-trigger').text(thisText);
        }
    });

    //service custom accordion js
    $(".service-custom-accordion-item").on('click', function() {
        var $this = $(this);
        if (window.matchMedia('(max-width: 1023px)').matches) {
            if ( $(this).hasClass("is-active") ) {
                $(this).removeClass("is-active");
                $(this).find('.service-custom-accordion-item-content').slideUp(300);
            } else {
                $(".service-custom-accordion-item").removeClass("is-active");
                $('.service-custom-accordion-item-content').slideUp(300);
                $(this).addClass("is-active");
                $(this).find('.service-custom-accordion-item-content').slideDown(300);
            }
        } else {
            if ( $(this).hasClass("is-active") ) {
                $(this).removeClass("is-active");
                $('.service-custom-accordion-item-text-hold').css('max-height', '26px');
                setTimeout(function () {
                    $this.addClass("scai-ellipse");
                }, 210);
            } else {
                setTimeout(function () {
                    $(".service-custom-accordion-item").not($this).addClass("scai-ellipse");
                }, 210);
                $(this).removeClass("scai-ellipse");
                $(".service-custom-accordion-item").removeClass("is-active");
                $('.service-custom-accordion-item-text-hold').css('max-height', '26px');
                $(this).addClass("is-active");
                $( ".service-custom-accordion-item.is-active .service-custom-accordion-item-text" ).each(function() {
                    var thisHeight = $(this).outerHeight();
                    $(this).parent().css('max-height', thisHeight);
                });
            }
        }
    });

    // latest updates slider
    $('.latest-updates-owl').owlCarousel({
        loop:false,
        margin:30,
        nav:false,
        dots: false,
        items: 6,
        responsive:{
            0:{
                margin:21,
                autoWidth: true,
            },
            1024:{
                items: 5,
            },
            1280:{
                items: 6,
            },
        }
    });

    $('.latest-updates-owl-5').owlCarousel({
        loop:false,
        margin:30,
        nav:false,
        dots: false,
        items: 5,
        responsive:{
            0:{
                margin:21,
                autoWidth: true,
            },
            1024:{
                items: 4,
            },
            1280:{
                items: 5,
            },
        }
    });

    //about us opportunities filter js
    //components filter js
    $(".about-us-page-opportunities-filter-trigger").click(function() {
        if( $(this).parent().hasClass('is-active') ) {
            $(this).parent().removeClass('is-active');
            $(this).parent().find('ul').slideUp(300);
        } else {
            $(this).parent().addClass('is-active');
            $(this).parent().find('ul').slideDown(300);
        }
    });
    $(".about-us-page-opportunities-filter-trigger-hold ul").on('click', 'li a',function() {
        $('.about-us-page-opportunities-filter-trigger-hold').removeClass('is-active');
        $('.about-us-page-opportunities-filter-trigger-hold').find('ul').slideUp(300);
        var thisText = $(this).text();
        $('.about-us-page-opportunities-filter-trigger').text(thisText);
    });

    // Contact form label movement
    $(".form-style .form-element input, .form-style .form-element textarea, .form-style .form-element select").focusin(function() {
        $(this).parent().addClass('is-focused');
    }).focusout(function (ev) {
        if(ev.target && ev.target.value.length === 0) {
            $(this).parent().removeClass('is-focused');
        }
    });

    if( $('.js-select2-subject').length ) {
        $('.js-select2-subject').select2({
            minimumResultsForSearch: Infinity,
            placeholder: ""
        });
        $('.js-select2-subject').on('select2:select', function (e) {
            $(this).parent().addClass('is-focused');
        });
    }
    if( $('.js-select2-phone').length ) {
        // var input = document.querySelector("#js-select2-phone");
        // window.intlTelInput(input, {
        //     // any initialisation options go here
        // });
    }

    $('.ncenter-news-filter ul li').on('click', function(){
        $('.ncenter-news-filter ul li').removeClass('current');
        $(this).addClass('current');
    });

    $('.know-center-quote-owl').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        dots: false,
        items: 1,
        animateOut: 'fadeOut',
        animateIn: 'fadeIn',
        smartSpeed:450
    });

    $('.news-inner-page-content-left-item span').on('click', function(){
        if( $(this).hasClass('is-active') ) {
            $('.news-inner-page-content-left-item span').removeClass('is-active');
            $(this).parent().find('ul').slideUp(300);
        } else {
            $('.news-inner-page-content-left-item span').removeClass('is-active');
            $('.news-inner-page-content-left-item ul').slideUp(300);
            $(this).addClass('is-active');
            $(this).parent().find('ul').slideDown(300);
        }
    });

    $('.news-inner-page-content-left-items-v2 ul li:lt(5)').show();
    $('.news-inner-page-content-left-items-v2-count span').text( $('.news-inner-page-content-left-items-v2 ul li:hidden').length );
    var newsInnerMoreGuides = $(".news-inner-page-content-left-items-v2 ul li").length;
    if (newsInnerMoreGuides <= 5) {
        $('.news-inner-page-content-left-items-v2-count').hide();
    } else {
        $('.news-inner-page-content-left-items-v2-count').show();
    }
    $('.news-inner-page-content-left-items-v2-count').click(function () {
        var newsInnerMoreGuidesShow = $('.news-inner-page-content-left-items-v2 ul li:visible').length + 5;
        if( newsInnerMoreGuidesShow < newsInnerMoreGuides ) {
            $('.news-inner-page-content-left-items-v2 ul li:lt('+newsInnerMoreGuidesShow+')').show();
        } else {
            $('.news-inner-page-content-left-items-v2 ul li:lt('+newsInnerMoreGuides+')').show();
            $('.news-inner-page-content-left-items-v2-count').hide();
        }
        $('.news-inner-page-content-left-items-v2-count span').text( $('.news-inner-page-content-left-items-v2 ul li:hidden').length );
    });

    $(".form-element-email-animated").mouseenter(function(){
        $(this).addClass('feea-in');
    });
    $('.form-element-email-animated').on('click', function () {
        var $this = $(this);
        setTimeout(function () {
            $this.addClass('feea-out');
        }, 200)
        setTimeout(function () {
            $this.removeClass('feea-in');
            $this.removeClass('feea-out');
        }, 1000)
    });

    if( $('.js-select2-country-of-residence').length ) {
        $('.js-select2-country-of-residence').select2({
            placeholder: ""
        });
        $('.js-select2-country-of-residence').on('select2:select', function (e) {
            $(this).parent().addClass('is-focused');
        });
    }
    
    $('.form-element-file input').on('change', function() {
        var fileName = $('.form-element-file input')[0].files[0].name;
        $(this).parent().find('label > div').text(fileName);
    });
    $('.job-reveal-scroll-to').on('click',function () {
        var thisFormPostion = $(this).parent().parent().parent().find(".job-reveal-hold-textbox").outerHeight();
        $('.job-reveal-hold').stop().animate({ 'scrollTop': thisFormPostion + 100 }, 700, 'swing');
        $(this).parent().parent().addClass('job-reveal-form-apply-sticky-hold-hidden');
    });
    $('.job-reveal-hold .close-button').on('click',function () {
        $('.job-reveal-form-apply-sticky-hold-hidden').removeClass('job-reveal-form-apply-sticky-hold-hidden');
    });
   
    if( $('.global-search-hold-section-search-input input').length > 0 && $('.global-search-hold-section-search-input input').val() != '' ) {
        $('.global-search-hold-section-search-text-before').hide();
        $('.global-search-hold-section-search-text-after').slideDown(300);
    } else {
        $('.global-search-hold-section-search-text-before').show();
        $('.global-search-hold-section-search-text-after').hide();
    }
    $( ".global-search-hold-section-search-input input" ).on('input', function() {
        if( $('.global-search-hold-section-search-input input').val() != '' ) {
            $('.global-search-hold-section-search-text-before').hide();
            $('.global-search-hold-section-search-text-after').slideDown(300);
        } else {
            $('.global-search-hold-section-search-text-before').show();
            $('.global-search-hold-section-search-text-after').hide();
        }
    });

    $(".products-inner-intro-text-more").on("click", function(){
        $(this).hide();
        var $el = $(this).parent().parent().find('.products-inner-intro-text-hold');
        $el.addClass('is-active');
        $el.css('max-height', '9999px');
    });

    if( $("#products-inner-intro-top-owl").length && $("#products-inner-intro-thumb-owl").length ) {
        var sync1 = $("#products-inner-intro-top-owl");
        var sync2 = $("#products-inner-intro-thumb-owl");
        var slidesPerPage = 4; //globaly define number of elements per page
        var syncedSecondary = true;

        sync1.owlCarousel({
            items: 1,
            slideSpeed: 2000,
            nav: false,
            dots: false,
            loop: true,
            responsiveRefreshRate: 200,
            animateOut: 'fadeOut',
            animateIn: 'fadeIn',
        }).on('changed.owl.carousel', syncPosition);

        sync2
            .on('initialized.owl.carousel', function() {
                sync2.find(".owl-item").eq(0).addClass("current");
            })
            .owlCarousel({
                items: slidesPerPage,
                dots: false,
                nav: false,
                smartSpeed: 200,
                slideSpeed: 500,
                autoWidth: true,
                margin:5,
                // slideBy: slidesPerPage, //alternatively you can slide by 1, this way the active slide will stick to the first item in the second carousel
                responsiveRefreshRate: 100
            }).on('changed.owl.carousel', syncPosition2);

        function syncPosition(el) {
            //if you set loop to false, you have to restore this next line
            //var current = el.item.index;

            //if you disable loop you have to comment this block
            var count = el.item.count - 1;
            var current = Math.round(el.item.index - (el.item.count / 2) - .5);

            if (current < 0) {
                current = count;
            }
            if (current > count) {
                current = 0;
            }

            sync2
                .find(".owl-item")
                .removeClass("current")
                .eq(current)
                .addClass("current");
            var onscreen = sync2.find('.owl-item.active').length - 1;
            var start = sync2.find('.owl-item.active').first().index();
            var end = sync2.find('.owl-item.active').last().index();

            if (current > end) {
                sync2.data('owl.carousel').to(current, 100, true);
            }
            if (current < start) {
                sync2.data('owl.carousel').to(current - onscreen, 100, true);
            }
        }

        function syncPosition2(el) {
            if (syncedSecondary) {
                var number = el.item.index;
                sync1.data('owl.carousel').to(number, 100, true);
            }
        }

        sync2.on("click", ".owl-item", function(e) {
            e.preventDefault();
            var number = $(this).index();
            sync1.data('owl.carousel').to(number, 300, true);
        });
    }

    $('.products-page-models-accord-item-title').on('click',function () {
        if( $(this).parent().hasClass('is-active') ) {
            $(this).parent().removeClass('is-active');
            $(this).parent().find('.products-page-models-accord-item-content').slideUp(300)
        } else {
            $('.products-page-models-accord-item').removeClass('is-active');
            $('.products-page-models-accord-item-content').slideUp(300)
            $(this).parent().addClass('is-active');
            $(this).parent().find('.products-page-models-accord-item-content').slideDown(300)
        }
    });
    $('.products-page-models-accord-item-trigger').on('click',function () {
        if( $(this).parent().hasClass('is-active') ) {
            $(this).parent().removeClass('is-active');
            $(this).parent().find('.products-page-models-accord-item-content').slideUp(300)
        } else {
            $('.products-page-models-accord-item').removeClass('is-active');
            $('.products-page-models-accord-item-content').slideUp(300)
            $(this).parent().addClass('is-active');
            $(this).parent().find('.products-page-models-accord-item-content').slideDown(300)
        }
    });

    $('.product-page-stick-contact-trigger').on('click',function () {
        $('.product-page-sticky-contact').addClass('is-active');
    });
    $('.product-page-sticky-contact-close').on('click',function () {
        $('.product-page-sticky-contact').removeClass('is-active');
    });
    $('.product-page-stick-docs-trigger').on('click',function () {
        $('.product-page-sticky-docs').addClass('is-active');
    });
    $('.product-page-sticky-docs-close').on('click',function () {
        $('.product-page-sticky-docs').removeClass('is-active');
    });

    $('.solutions-inner-solutions-steps input[type="radio"]').change(function(){ 
        if ( $('.solutions-inner-solutions-step-1 input[type="radio"]:checked').length ) {
            $('.solutions-inner-solutions-step-2 > span').addClass('is-active');
            $('.solutions-inner-solutions-step-2-hold').slideDown(300);
        } else {
            $('.solutions-inner-solutions-step-2 > span').removeClass('is-active');
            $('.solutions-inner-solutions-step-2-hold').slideUp(300);
            $('.solutions-inner-solutions-step-2 input[type="radio"]').prop('checked', false);
        }

        if ( $('.solutions-inner-solutions-step-2 input[type="radio"]:checked').length ) {
            $('.solutions-inner-solutions-step-rez > span').addClass('is-active');
            $('.solutions-inner-solutions-step-rez-hold').slideDown(300);
        } else {
            $('.solutions-inner-solutions-step-rez > span').removeClass('is-active');
            $('.solutions-inner-solutions-step-rez-hold').slideUp(300);
        }
    });  

    if( $('.solutions-page-intro-owl').length ) {
        $('.solutions-page-intro-owl').each(function(i) {
            var owl = $(this);

            solutions_page_owlTotal = owl.find('.item').length;
            solutions_page_owlStepPercent = 100 / solutions_page_owlTotal;
            owl.parent().find('.solutions-page-intro-owl-progress span span').css('width', solutions_page_owlStepPercent+'%');
            owl.parent().find('.solutions-page-intro-owl-count-total').text(solutions_page_owlTotal);

            owl.owlCarousel({
                loop:true,
                margin:0,
                nav:false,
                dots: false,
                items: 1,
            });

            owl.on('initialized.owl.carousel changed.owl.carousel', function(e) {
                if (!e.namespace)  {
                    return;
                }
                var carousel = e.relatedTarget;
                var carouselCurr = carousel.relative(carousel.current() ) + 1;
                
                $(this).parent().find('.solutions-page-intro-owl-progress span span').css('width', carouselCurr * solutions_page_owlStepPercent+'%');
                $(this).parent().find('.solutions-page-intro-owl-count-current').text(carouselCurr);
            });
            
            if (window.matchMedia('(min-width: 1024px)').matches) {
                var allowTransitionLeft = true;
                var allowTransitionRight = true;
                owl.on('mousewheel', '.owl-stage', function (e) {
                    e.preventDefault();
                
                    if (e.deltaY<0) {
                        if( allowTransitionRight ) {
                            allowTransitionRight = false;
                            owl.trigger('next.owl', [2000]);
                        };
                    } else {
                        if (allowTransitionLeft) {
                            allowTransitionLeft = false;
                            owl.trigger('prev.owl', [2000]);
                        };
                    }

                    owl.find('.active').addClass('item-animated');
                
                }).on('translated.owl.carousel', function (e) {
                    setTimeout(function() {
                        allowTransitionRight = true;
                        allowTransitionLeft = true;
                    }, 500);
                });
            }
        });
        $('.solutions-page-intro-owl').find('.owl-item.active').addClass('active-first');
        $('.solutions-page-intro-owl').first().find('.owl-item.active').addClass(' item-animated');
    }

    if( $('.section-full-video-image-hold').length ) {
        function parallax() {
            var scrolled = $(window).scrollTop();
            var position = $('.section-full-video-image-hold').offset().top;
            $('.section-full-video-image-box').css('transform', 'translateY('+( (position - scrolled) * 0.3 )+'px)');
        }
          
        $(window).scroll(function(e){
            var top_of_element = $('.section-full-video-image-hold').offset().top;
            var bottom_of_element = $('.section-full-video-image-hold').offset().top + $('.section-full-video-image-hold').outerHeight();
            var bottom_of_screen = $(window).scrollTop() + $(window).innerHeight();
            var top_of_screen = $(window).scrollTop();
    
            if ((bottom_of_screen > top_of_element) && (top_of_screen < bottom_of_element)){
                parallax();
            }
        });
    }

    // if( $('.header-word').length ) {
        // Wrap every letter in a span
        // var textWrapper = document.querySelector('.header-word p');
        // textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

        // anime.timeline({loop: true})
        // .add({
        //     targets: '.header-word p .letter',
        //     translateY: [100,0],
        //     translateZ: 0,
        //     opacity: [0,1],
        //     easing: "easeOutExpo",
        //     duration: 1400,
        //     delay: (el, i) => 300 + 30 * i
        // }).add({
        //     targets: '.header-word p .letter',
        //     translateY: [0,-100],
        //     opacity: [1,0],
        //     easing: "easeInExpo",
        //     duration: 1200,
        //     delay: (el, i) => 100 + 30 * i
        // });
    // }
    
    
    var $window = $(window);
    $window.scroll(function () {
        $scroll = $window.scrollTop();
        if ($scroll > 50) {
            $('.header-word').addClass('header-word-up');
        }
        if ($scroll < 100) {
            $('.header-word').removeClass('header-word-up');
        }
    });
    
    // var c, currentScrollTop = 0,
    // navbar = $('.header-word');

    // $(window).scroll(function () {
    //     var a = $(window).scrollTop();
    //     var b = navbar.height();
        
    //     currentScrollTop = a;
        
    //     if (c < currentScrollTop && a > b + b) {
    //         navbar.addClass("scrollUp");
    //     } else if (c > currentScrollTop && !(a <= b)) {
    //         navbar.removeClass("scrollUp");
    //     }
    //     c = currentScrollTop;
    // });


    $('.industries-checkbox input').on('change', function() {
        if( $('.industries-checkbox input:checked').length == 2 ) {
            $('.home-section-industries-desktop-middle-first').fadeOut(300);
        }
    });
    $('.home-section-industries-desktop-middle-btn a').on('mouseenter', function() {
        $('.home-section-industries-desktop-middle-img').addClass('is-active');
        $('.home-section-industries-mobile-img').addClass('is-active');
    });
    $('.home-section-industries-desktop-middle-btn a').on('mouseleave', function() {
        $('.home-section-industries-desktop-middle-img').removeClass('is-active');
        $('.home-section-industries-mobile-img').removeClass('is-active');
    });
    $('.industries-checkbox-market input').on('change', function() {
        var Mgroup = $(this).attr('data-group');
        $('.industries-checkbox-industry').each(function() {
            var Igroup = $(this).attr('data-group');
            if( Mgroup == Igroup ) {
                $(this).removeClass( "is-disabled" );
            } else {
                $(this).addClass( "is-disabled" );
            }
        });
    });
    $('.industries-checkbox-industry input').on('change', function() {
        var dataItem = $(this).attr('data-item');
        $('.home-section-industries-desktop-middle-item').fadeOut(300);
        setTimeout(function() {
            $('#' + dataItem).fadeIn();
        }, 300)
    });

    $('.home-section-industries-mobile-triggers ul li').on('click', function() {
        var id = $(this).attr('data-id');
        $('body').addClass('prev-scroll');
        if( id == 'market') {
            $('.home-section-industries-mobile-market').fadeIn(300);
            $('.home-section-industries-mobile-market').addClass('is-active');
        }
        if( id == 'industry') {
            $('.home-section-industries-mobile-industry').fadeIn(300);
            $('.home-section-industries-mobile-industry').addClass('is-active');
        }
    });
    $('.home-section-industries-mobile-triggers-item-close, .industries-checkbox').on('click', function() {
        $('.home-section-industries-mobile-triggers-item').removeClass('is-active');
        $('body').removeClass('prev-scroll');
        setTimeout(function() {
            $('.home-section-industries-mobile-triggers-item').fadeOut(300);
        }, 300);
    });
    $('.home-section-industries-mobile-triggers-item-hold').on('click', function(e) {
        $('.home-section-industries-mobile-triggers-item').removeClass('is-active');
        $('body').removeClass('prev-scroll');
        setTimeout(function() {
            $('.home-section-industries-mobile-triggers-item').fadeOut(300);
        }, 300);
    }).children().click(function(e) {
        e.stopPropagation();
    });

    $('.homepage-intro-section-owl').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        dots: false,
        items: 1,
    });
    
    
    // animations
    $('.animation-list-js ul').each(function(){
        var itemCount = 0;
        $(this).find('> li').each(function(){
            itemCount++;
            $(this).css('transition-delay',  itemCount * 150 + 'ms');
        });
    });

    $('.animation-owl-js').each(function(){
        var itemCount = 0;
        $(this).find('.item').each(function(){
            itemCount++;
            $(this).css('transition-delay',  itemCount * 150 + 'ms');
        });
    });

    $('.animation-div-js').each(function(){
        var itemCount = 0;
        $(this).find('> div').each(function(){
            itemCount++;
            $(this).css('transition-delay',  itemCount * 150 + 'ms');
        });
    });

    $('.home-section-industries-left .industries-checkbox').each(function(index){
        $(this).find('> div').css('transition-delay',  index * 150 + 'ms');
    });
    $('.home-section-industries-right .industries-checkbox').each(function(index){
        $(this).find('> div').css('transition-delay',  index * 150 + 'ms');
    });

    $(".about-page-partners-section-list-tooltip-trigger").on('click', function(){
        if( $(this).parent().hasClass('is-active') ) {
            $(this).parent().parent().removeClass('is-active');
            $(this).parent().parent().parent().removeClass('is-active');
            $(this).parent().removeClass('is-active');
        } else {
            $(".about-page-partners-section-list ul.is-active").removeClass('is-active');
            $(".about-page-partners-section-list ul li.is-active").removeClass('is-active');
            $(".about-page-partners-section-list-tooltip-hold.is-active").removeClass('is-active');
            
            $(this).parent().parent().parent().addClass('is-active');
            $(this).parent().parent().addClass('is-active');
            $(this).parent().addClass('is-active');
        }
    });
    
    var $animation_elements = $('.animation-element');
    var $window = $(window);
    $vHeight = $(window).height();
    $vWidth = $(window).width();
    function check_if_in_view() {
        var window_height = $window.height();
        var window_top_position = $window.scrollTop();
        var window_bottom_position = (window_top_position + window_height);
        $.each($animation_elements, function() {
            var $element = $(this);
            var element_height = $element.outerHeight();
            var element_top_position = $element.offset().top + 150;
            var element_bottom_position = (element_top_position + element_height);
            if ((element_bottom_position >= window_top_position) &&
                (element_top_position <= window_bottom_position)) {
                $element.addClass('in-view');
            }
        });
    }
    $window.on('scroll resize', check_if_in_view);
    $window.trigger('scroll');

    $('.home-intro-trigger').on('mouseenter', function() {
        var id = $(this).attr('data-id');
        $('.homepage-intro-section-imgs').find('img:not(.homepage-intro-section-imgs-img-default)').removeClass('is-active');
        $('.homepage-intro-section-imgs').find('#home-intro-0').removeClass('is-active');

        $('.homepage-intro-section-imgs').find('#' + id).addClass('is-active');
        $('.homepage-intro-section-imgs').find('#home-intro-0').addClass('is-active');

        $('.homepage-intro-section-imgs-tooltip').removeClass('is-active');
        $('.homepage-intro-section-imgs-tooltip[data-id='+id+']').addClass('is-active');
    });
    // $('.home-intro-trigger').on('mouseleave', function() {
    //     $('.homepage-intro-section-imgs').find('img:not(.homepage-intro-section-imgs-img-default)').removeClass('is-active');
    //     $('.homepage-intro-section-imgs').find('#home-intro-0').removeClass('is-active');
    // });

    $('.homepage-intro-section-imgs').on('mouseleave', function() {
        $('.homepage-intro-section-imgs-tooltip').removeClass('is-active');

        $('.homepage-intro-section-imgs').find('img:not(.homepage-intro-section-imgs-img-default)').removeClass('is-active');
        $('.homepage-intro-section-imgs').find('#home-intro-0').removeClass('is-active');
    });

    $('.about-page-map-tooltip').on('mouseenter', function() {
        $('.about-page-map-tooltip').removeClass('is-active');
        $(this).addClass('is-active');
    });
    $('.about-page-map-tooltip-content').on('mouseleave', function() {
        $(this).parent().removeClass('is-active');
    });
    
}); //doc ready close.