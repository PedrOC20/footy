const nav = document.querySelector(".footy-navbar")

const navScroll = () => {
  window.addEventListener("scroll",(e) => {
    if(pageYOffset > 20) {
      nav.classList.add('changeColor');
    };
    if(pageYOffset < 20) {
      nav.classList.remove('changeColor');
    };
  });
}

export { navScroll };
