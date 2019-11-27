import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Curious? ^1000 Antsy? ^1000 Lonesome?", "Discover your colleagues across the hall"],
    typeSpeed: 50,
    startDelay: 1000,
    loop: true
  });
}

export { loadDynamicBannerText };
