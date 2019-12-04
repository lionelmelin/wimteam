
const toggleButtonInit = () => {

  const toggleButton = document.querySelector(".tgl-btn");
  if(toggleButton) {
    toggleButton.addEventListener('click', (event) => {
      event.currentTarget.parentNode.parentNode.previousElementSibling.classList.toggle("checked");
      event.currentTarget.parentNode.parentNode.nextElementSibling.classList.toggle("checked");
    })
  }

}

export { toggleButtonInit };
