const images = ["https://images.unsplash.com/photo-1540991310315-65c19abac6b3?ixlib=rb-1.2.1&auto=format&fit=crop&w=2850&q=80"];
let i = 0;
const changeBanner = () => {
  if(images.length == i){
    i = 0;
  }
  else {
    document.getElementById("bannerImage").style.backgroundImage =
      `linear-gradient(rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.3)), url(${images[i]}`;
    i++;
  }
}

const bannerChanger = () => {
  setInterval(changeBanner, 3000)
}

export { bannerChanger };


// let current = 0,
//     slides = document.getElementsById("bannerImage").style.backgroundImage =
//       `linear-gradient(rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.3)), url(${images[i]}`;;

// setInterval(function() {
//   for (var i = 0; i < slides.length; i++) {
//     slides[i].style.opacity = 0;
//   }
//   current = (current != slides.length - 1) ? current + 1 : 0;
//   slides[current].style.opacity = 1;
// }, 3000);
