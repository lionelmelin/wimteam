
const addNewSkillForm = (event) => {
  event.currentTarget.nextElementSibling.style.display = "flex";
  event.currentTarget.style.display = "none";
};


const removeNewSkillForm = (event) => {
  event.currentTarget.parentNode.previousElementSibling.style.display = "block";
  event.currentTarget.parentNode.style.display = "none";
};


const displayNewSkillForm = () => {
  const new_skill_buttons = document.querySelectorAll(".skill-new");
  if(new_skill_buttons) {
    new_skill_buttons.forEach( button => button.addEventListener("click", addNewSkillForm ));
  }
};

const hideNewSkillForm = () => {
  const cancel_new_skill_buttons = document.querySelectorAll(".skill-new-cancel");
  if(cancel_new_skill_buttons) {
    cancel_new_skill_buttons.forEach( button => button.addEventListener("click", removeNewSkillForm ));
  }
};

export { displayNewSkillForm, hideNewSkillForm };


