const initGauge = () => {


$(function() {


  $(".progress").each(function() {

    var value = $(this).attr('data-value');
    var left = $(this).find('.progress-left .progress-bar');
    var right = $(this).find('.progress-right .progress-bar');

    if (value >= 0) {
      if (value <= 50) {
        right.css('transform', 'rotate(' + percentageToDegrees(value) + 'deg)')
        // right.animate([
        //   // keyframes
        //   { transform: 'rotate(0deg)'},
        //   { transform: 'rotate(' + percentageToDegrees(value) + 'deg)' }
        // ], {
        //   // timing options
        //   delay: 0,
        //   direction: "normal",
        //   duration: 300,
        //   fill: "forwards",
        //   easing: "linear"
        // });
        // console.log(percentageToDegrees(value));
      } else {
        right.css('transform', 'rotate(180deg)')
        // right.animate([
        //   // keyframes
        //   { transform: 'rotate(0deg)' },
        //   { transform: 'rotate(180deg)'}
        // ], {
        //   // timing options
        //   delay: 0,
        //   direction: "normal",
        //   duration: 300,
        //   fill: "forwards",
        //   easing: "linear"
        // });
        // console.log(percentageToDegrees(value - 50));
        left.css('transform', 'rotate(' + percentageToDegrees(value - 50) + 'deg)')
        // left.animate([
        //   // keyframes
        //   { transform: 'rotate(0deg)' },
        //   { transform: 'rotate(' + percentageToDegrees(value - 50) + 'deg)'}
        // ], {
        //   // timing options
        //   delay: 0,
        //   direction: "normal",
        //   duration: 300,
        //   fill: "forwards",
        //   easing: "linear"
        // });
      }
    }
  })

  function percentageToDegrees(percentage) {
    return percentage / 100 * 360
  }

});
};

export { initGauge };
