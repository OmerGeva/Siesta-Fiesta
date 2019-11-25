const couch = document.querySelector("#couch-icon");
const tent = document.querySelector("#tent-icon");
const yoga = document.querySelector("#yoga-icon");

const iconChanger = () => {
couch.addEventListener("mouseover", (event) => {

  couch.style.height = "120px";

  setTimeout(() => {
    couch.style.height = "80px";
  }, 450)
});
tent.addEventListener("mouseover", (event) => {

  tent.style.height = "120px";

  setTimeout(() => {
    tent.style.height = "80px";
  }, 450)
});
yoga.addEventListener("mouseover", (event) => {

  yoga.style.height = "120px";

  setTimeout(() => {
    yoga.style.height = "80px";
  }, 450)
});
}

export{ iconChanger };
