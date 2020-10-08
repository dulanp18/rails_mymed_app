const openNav = () => {
  document.getElementById("mySidebar").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
};

/* Set the width of the sidebar to 0 and the left margin of the page content to 0 */
const closeNav = () => {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft = "0";
};

const initSideBar = () => {
  const openButton = document.querySelector(".openbtn");
  const closeButton = document.querySelector(".closebtn");

  if (openButton) {
     openButton.addEventListener('click', () => openNav());

     closeButton.addEventListener('click', () => closeNav());
  }
}


export { initSideBar }
