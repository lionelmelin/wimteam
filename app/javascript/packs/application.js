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
import { initUpdateSearchbarOnScroll } from '../components/searchbar';
initUpdateSearchbarOnScroll();

//Gauge
import { initGauge } from '../components/gauge';
initGauge();

//DatePicker
import "../plugins/flatpickr";

//PopOver
import { activatePopOver } from '../components/popover';
activatePopOver();
