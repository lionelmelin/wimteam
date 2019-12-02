import "bootstrap";

// Dymanic text for banner
import { loadDynamicBannerText } from '../components/banner_text';
if (document.querySelector("#banner-typed-text")) {
  loadDynamicBannerText();
}

//Navbar for homepage
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

//Button for banner homepage
import { initBannerButton } from '../components/banner_button';
if (document.querySelector(".banner-button")) {
  initBannerButton();
}

//Gauge
import { initGauge } from '../components/gauge';
initGauge();

//DatePicker
import "../plugins/flatpickr";

//Button to add new skill on profile
import { displayNewSkillForm, hideNewSkillForm } from "../components/new_skill_button";
displayNewSkillForm();
hideNewSkillForm();
