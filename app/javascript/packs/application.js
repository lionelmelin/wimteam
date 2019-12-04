import "bootstrap";

import $ from 'jquery';
global.$ = jQuery;

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

//Searchbar for Index
// import { initUpdateSearchbarOnScroll } from '../components/searchbar';
// initUpdateSearchbarOnScroll();

//Gauge
import { initGauge } from '../components/gauge';
initGauge();

//DatePicker
import "../plugins/flatpickr";

//Button to add new skill on profile
import { displayNewSkillForm, hideNewSkillForm } from "../components/new_skill_button";
displayNewSkillForm();
hideNewSkillForm();

//PopOver for Index
import { activatePopOver } from '../components/popover';
activatePopOver();

//Dropdown with Select2
import { initSelect2 } from '../components/dropdown_select2';
initSelect2();

import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-delete', {
  title: "Are you sure you want to cancel your application?",
  text: "This action cannot be reversed",
  icon: "warning"
  }, (value) => {
  console.log(value);
  if (value) {
    const link = document.querySelector('#delete-link');
    link.click();
  }
});








