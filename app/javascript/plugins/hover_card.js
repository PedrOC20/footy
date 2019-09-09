// const card = document.querySelector(".card-contain");
const cards = document.getElementsByClassName("card-contain");
const moreInfo = document.getElementsByClassName("hover-more-info");

const hoverCard = () => {
  Array.from(cards).forEach((card) => {
    card.addEventListener("click",(e) => {
      moreInfo.classList.remove('hover-display-none');
      moreInfo.classList.add('hover-display')
    });

    card.addEventListener("mouseout",(e) => {
      moreInfo.classList.remove('hover-display');
      moreInfo.classList.add('hover-display-none')
    });
  });
}


export { hoverCard };
