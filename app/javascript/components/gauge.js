const initGauge = () => {


$(function() {


  $(".progress").each(function() {

    var value = $(this).attr('data-value');
    var left = $(this).find('.progress-left .progress-bar');
    var right = $(this).find('.progress-right .progress-bar');
    var timer = 900; //milliseconds

    if (value > 0) {
      if (value <= 50) {
        // right.css('transform', 'rotate(' + percentageToDegrees(value) + 'deg)')
        right[0].animate([
          // keyframes
          { transform: 'rotate(0deg)'},
          { transform: 'rotate(' + percentageToDegrees(value) + 'deg)' }
        ], {
          // timing options
          delay: 0,
          duration: timer * value / 100,
          fill: "forwards"
        });
      } else {
        right.css('transform', 'rotate(180deg)')
        right[0].animate([
          // keyframes
          { transform: 'rotate(0deg)' },
          { transform: 'rotate(180deg)'}
        ], {
          // timing options
          delay: 0,
          duration: timer / 2,
          fill: "forwards"
        });
        // left.css('transform', 'rotate(' + percentageToDegrees(value - 50) + 'deg)')
        left[0].animate([
          // keyframes
          { transform: 'rotate(0deg)' },
          { transform: 'rotate(' + percentageToDegrees(value - 50) + 'deg)'}
        ], {
          // timing options
          delay: timer / 2,
          duration: timer * ( value - 50 ) / 100,
          fill: "forwards"
        });
      }
    }
  })

  function percentageToDegrees(percentage) {
    return percentage / 100 * 360
  }

});
};

export { initGauge };
