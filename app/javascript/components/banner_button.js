console.log($(".banner-button"));

const initBannerButton = () => {
  const button = document.querySelector(".banner-button")
  const banner = document.querySelector(".banner")

  // if(button) {
  //   button.addEventListener('click', () => {
  //     window.scrollTo(0,banner.scrollHeight);
  //     console.log(banner.scrollHeight);
  //     // window.scrollTo($(this).closest('section'),800);
  //   })
  // }

  $(document).ready(function() {
    $('.banner-link').on('click', function() { // Au clic sur un élément
      var page = $(this).attr('href'); // Page cible
      console.log(page);
      var speed = 750; // Durée de l'animation (en ms)
      $('html, body').animate( { scrollTop: $(page).offset().top }, speed ); // Go
      return false;
    });
  });

  // const navbar = document.getElementById("pages_home").querySelector('.navbar');
  // if (navbar) {
  //   window.addEventListener('scroll', () => {
  //     if (window.scrollY >= 100 && window.scrollY < 200 ) {
  //       navbar.classList.remove('navbar-transparent-2');
  //       navbar.classList.add('navbar-transparent-1');
  //     } else if (window.scrollY >= 200) {
  //       navbar.classList.add('navbar-transparent-2');
  //     } else {
  //       navbar.classList.remove('navbar-transparent-1');
  //       navbar.classList.remove('navbar-transparent-2');
  //     }
  //   });
  // }
}

export { initBannerButton };
