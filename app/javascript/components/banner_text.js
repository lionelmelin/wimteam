import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Discover your colleague's life", "Connect with your colleagues"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
