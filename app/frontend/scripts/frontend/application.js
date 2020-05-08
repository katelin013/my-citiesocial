import bulmaCarousel from "bulma-carousel";

document.addEventListener('turbolinks:load', ()=>{
  bulmaCarousel.attach("#carousel", {
    slidesToScroll: 1,
    slidesToShow: 4,
    infinite: true,
    autoplay: true
  });
});

