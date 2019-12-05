
const toggleButtonInit = () => {

  const toggleButton = document.querySelector(".tgl-btn");

  if(toggleButton) {
    const userId = document.querySelector(".profile-card").dataset.userId;
    const toggleAuthenticityToken = document.getElementById("toggle-authenticity-token").value;
    console.log(toggleAuthenticityToken);
    toggleButton.addEventListener('click', (event) => {
        fetch('/profiles/' + userId, {
          method: 'PATCH',
          headers: { 'X-CSRF-Token': toggleAuthenticityToken},
        })
        event.currentTarget.parentNode.parentNode.previousElementSibling.classList.toggle("checked");
        event.currentTarget.parentNode.parentNode.nextElementSibling.classList.toggle("checked");
    });
    }
  }



export { toggleButtonInit };
