
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
        document.querySelector(".rocket").classList.toggle("checked-icon");
        document.querySelector(".handshake").classList.toggle("checked-icon");
    });
    }
  }

export { toggleButtonInit };
