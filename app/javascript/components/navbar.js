const initUpdateNavbarOnScroll = () => {
  const navbar = document.getElementById("pages_home").querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 100 && window.scrollY < 200 ) {
        navbar.classList.remove('navbar-transparent-2');
        navbar.classList.add('navbar-transparent-1');
      } else if (window.scrollY >= 200) {
        navbar.classList.add('navbar-transparent-2');
      } else {
        navbar.classList.remove('navbar-transparent-1');
        navbar.classList.remove('navbar-transparent-2');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
