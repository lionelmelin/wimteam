import "bootstrap";

// Dymanic text for banner
import { loadDynamicBannerText } from '../components/banner_text';
loadDynamicBannerText();

//Navbar for homepage
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { initBannerButton } from '../components/banner_button';
initBannerButton();

//DatePicker
import "../plugins/flatpickr"
