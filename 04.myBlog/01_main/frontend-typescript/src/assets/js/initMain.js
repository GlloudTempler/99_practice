export default function initMain() {
    // owlcarousel
    $('.carousel-div').owlCarousel({
        // 옵션
        autoplay:true,
        smartSpeed: 1000,
        loop:true,
        nav:true,
        items:1
    })

    $(".skill").waypoint(
        function () {
          $(".progress .progress-bar").each(function () {
            $(this).css("width", $(this).attr("aria-valuenow") + "%");
          });
        },
        { offset: "80%" }
    );
}
