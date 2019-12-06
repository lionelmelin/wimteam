import swal from 'sweetalert';


const applicationsSweetAlert = (classSelector, idSelector, options = {}, callback = () => {}) => {
  const sizeArray = document.querySelectorAll(classSelector).length;
  for (let i = 0; i< sizeArray; i++) {
    initSweetalert(idSelector + "-" + i, options, callback);
  };
};

const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButton = document.querySelector(selector);
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal(options).then(callback); // <-- add the `.then(callback)`
    });
  }
};

export { applicationsSweetAlert };
