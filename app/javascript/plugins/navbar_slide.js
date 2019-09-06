/* Set the width of the side navigation to 250px */
const openNav = () => {
  document.getElementById("mySidenav").style.width = "240px";
}

/* Set the width of the side navigation to 0 */
const closeNav = () => {
  document.getElementById("mySidenav").style.width = "0";
}

const navAction = () => {
  const button = document.querySelector("#navbar-list-home");
    button.addEventListener("click",(e) => {
      openNav();
  });

  const closeNavbar = document.querySelector("#close-nav");
  closeNavbar.addEventListener("click",(e) => {
    closeNav();
  });
}

export { navAction };
