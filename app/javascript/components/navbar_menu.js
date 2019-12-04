const activeLinkNav = () => {

  const bodyId = document.querySelector("body").id;

  let menuLinkActive = document.querySelector(`.nav-item.${bodyId}`);

  if (bodyId === "walks_show") {
    menuLinkActive = document.querySelector(".nav-item.walks_index");
  }
  if (menuLinkActive) {
    menuLinkActive.classList.add("active");
  }

};

export { activeLinkNav };
