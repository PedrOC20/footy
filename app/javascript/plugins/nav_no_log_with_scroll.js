const navNoLog = document.querySelector(".nav-no-log");
const shownavNoLog = document.querySelector(".show-nav");

const navNoLogWithScroll = () => {
  window.addEventListener("scroll",(e) => {
    if(pageYOffset > 20) {
      navNoLog.classList.add('nav-no-log-with-scroll');
      if(shownavNoLog) {
        shownavNoLog.classList.add('changeColor');
      }

    };
    if(pageYOffset < 20) {
      navNoLog.classList.remove('nav-no-log-with-scroll');
      if(shownavNoLog) {
        shownavNoLog.classList.remove('changeColor');
      }
    };
  });
}

export { navNoLogWithScroll };
