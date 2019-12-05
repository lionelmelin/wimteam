const collapseHeaders = document.querySelectorAll(".collapseHeader");

const rotateChevron = (event) => { event.currentTarget.querySelector(".expand-notice").style.transform = "rotate(180deg)" };

collapseHeaders.forEach( collapseHeader => { collapseHeader.addEventListener("click", rotateChevron) });

