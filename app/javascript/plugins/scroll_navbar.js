const nav = document.querySelector(".footy-navbar");
const shownav = document.querySelector(".show-nav");

const navScroll = () => {
  window.addEventListener("scroll",(e) => {
    if(pageYOffset > 20) {
      nav.classList.add('changeColor');
      shownav.classList.add('changeColor');
    };
    if(pageYOffset < 20) {
      shownav.classList.remove('changeColor');
    };
  });
}

export { navScroll };
