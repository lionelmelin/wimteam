const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  if (navbar && document.getElementById("pages_home")) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 300 && window.scrollY < 600 ) {
        navbar.classList.remove('navbar-transparent-2');
        navbar.classList.add('navbar-transparent-1');
      } else if (window.scrollY >= 600) {
        navbar.classList.add('navbar-transparent-2');
      } else {
        navbar.classList.remove('navbar-transparent-1');
        navbar.classList.remove('navbar-transparent-2');
      }
    });
  }
  else if (navbar) {
    navbar.classList.add('navbar-transparent-2');
  }
}

export { initUpdateNavbarOnScroll };
