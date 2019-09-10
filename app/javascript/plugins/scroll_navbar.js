const nav = document.querySelector(".footy-navbar");
const shownav = document.querySelector(".show-nav");

const navScroll = () => {
  window.addEventListener("scroll",(e) => {
    if(pageYOffset > 20) {
      nav.classList.add('changeColor');
      nav.classList.add('add-border');
      if(shownav) {
        shownav.classList.add('changeColor');
      }

    };
    if(pageYOffset < 20) {
      nav.classList.remove('changeColor');
      nav.classList.remove('add-border');
      if(shownav) {
        shownav.classList.remove('changeColor');
      }
    };
  });
}

export { navScroll };
