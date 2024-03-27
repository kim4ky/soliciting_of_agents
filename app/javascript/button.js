const setupButtonEvents = () => {
  const buttons = document.querySelectorAll("#button");

  buttons.forEach(button => {
    button.addEventListener('mouseover', function() {
      this.style.filter = "brightness(90%)";
    });
  
    button.addEventListener('mouseout', function() {
      this.style.filter = "";
    });
  });
};

window.addEventListener("turbo:load", setupButtonEvents);
window.addEventListener("turbo:render", setupButtonEvents);