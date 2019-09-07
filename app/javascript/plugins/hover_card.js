const card = document.querySelector(".card-contain");
const moreInfo = document.querySelector(".hover-more-info");

const hoverCard = () => {
  card.addEventListener("click",(e) => {
    console.log("yes");
    moreInfo.classList.remove('hover-display-none');
    moreInfo.classList.add('hover-display')
  });

  card.addEventListener("mouseout",(e) => {
    moreInfo.classList.remove('hover-display');
    moreInfo.classList.add('hover-display-none')
  });
}


export { hoverCard };
