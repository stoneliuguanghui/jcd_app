$(function() {
    var honbowUrl = "https://api.letscom.com"
    // var honbowUrl = "http://official-api.honbow.cn"

    // 缁戝畾婊氬姩浜嬩欢
    $(".nav").on("click", function(event) {
        var a = event.target.getAttribute('data-a')
        if (a) {
            scrollToEle('#' + a, 1000);
        }
    })
    // 璁剧疆榛樿澶撮儴
    if ($(window).scrollTop() > 50) {
        $("#hd-wrap").addClass("hd-wrap-02")
    } else {
        $("#hd-wrap").removeClass("hd-wrap-02")
    }
    // 婊氬姩鏀瑰彉鎸夐挳涓嬪垝绾�
    $(window).on("scroll", function() {
        var current = $(window).scrollTop()
        var list = ["#enterprise", "#plan", "#cooperation"]
        var eleIndex = 0 // 鍏冪礌浣嶇疆
        var arrTop = getEleTopArr(list)
        arrTop.forEach(function(item, index) {
            if (current >= item) {
                eleIndex = index
            }
        })
        // 鑾峰彇 nav 瀵瑰簲鍏冪礌锛屽姞涓婁笅鍒掔嚎
        $(".nav li")
            .eq(eleIndex)
            .addClass("nav-active")
            .siblings("li")
          .removeClass('nav-active')

        // 鏍规嵁婊氬姩楂樺害锛岄€夋嫨澶撮儴鏍峰紡
        if (current > 50) {
            $("#hd-wrap").addClass("hd-wrap-02")
        } else {
            $("#hd-wrap").removeClass("hd-wrap-02")
        }
    })

    // 杞挱鍥�
    $.getJSON(honbowUrl + "/Banners/Bandrop", {
            siteName: "娲牎瀹樼綉",
        },
        function(data) {
            // if (data.code === 200) {
            //     var bannerStr = ""

            //     data.data.forEach(function(item) {
            //         bannerStr += contactBannerStr(item)
            //     })
            //     $("#banner .swiper-wrapper").html(bannerStr)
                
            //     initSwiper(data.data.length)
            // }
        });

    // 婊氬姩鏂规硶
    function scrollToEle(ele, speed) {
        if (!speed) {
            speed = 300;
        }
        if (!ele) {
            $("html,body").animate({
                scrollTop: 0
            }, speed);
        } else {
            if (ele.length > 0) {
                $("html,body").animate({
                    scrollTop: $(ele).offset().top - 76
                }, speed);
            }
        }
    }
    // 鑾峰彇婊氬姩鎸夐挳瀵瑰簲鐨勯珮搴�
    function getEleTopArr(eleParent) {
        var arr = []
        eleParent.forEach(function(item, index) {
            arr.push($(item).offset().top - 76)
        })
        return arr;
    }
    // 鎷兼帴杞挱鍥惧瓧绗︿覆
    function contactBannerStr(item) {
        if (item.link) {
            return '<a href="' +
                item.link +
                '" class="swiper-slide" style="background-image: url(' +
                item.url +
                ')" target="_blank"></a>';
        } else {
            return '<a class="swiper-slide" style="background-image: url(' + item.url + ')"></a>';
        }

    }
    // 鍒濆鍖栬疆鎾浘
    function initSwiper(length) {
        return new Swiper('.swiper-container', {
            autoplay: {
                disableOnInteraction: false,
            },
            loop: length > 1? true: false,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            }
        })
    }
});