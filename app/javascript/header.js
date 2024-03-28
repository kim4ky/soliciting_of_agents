const headerButtonEvents = () => {
  const logo = document.getElementById("logo");

  logo.addEventListener('mouseover', function(){
    this.setAttribute("style", "color: rgb(253,70,85);");
  });
  logo.addEventListener('mouseout', function(){
    this.removeAttribute("style", "color: rgb(253,70,85);");
  });
};

window.addEventListener("turbo:load", headerButtonEvents);
window.addEventListener("turbo:render", headerButtonEvents);