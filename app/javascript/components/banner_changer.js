// const bgImageArray = ["https://images.unsplash.com/photo-1540991825428-5b54b09f7338?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2994&q=80", "https://images.unsplash.com/photo-1540991310315-65c19abac6b3?ixlib=rb-1.2.1&auto=format&fit=crop&w=2850&q=80"],
// secs = 4;
// bgImageArray.forEach(function(img){
//     new Image().src = img;
//     // caches images, avoiding white flash between background replacements
// });

// function backgroundSequence() {
//   window.clearTimeout();
//   let k = 0;
//   for (i = 0; i < bgImageArray.length; i++) {
//     setTimeout(function(){
//       document.getElementById("bannerImage").style.background = "url(" + bgImageArray[k] + ") no-repeat center center fixed";
//       document.getElementById("bannerImage").style.backgroundSize ="cover";
//     if ((k + 1) === bgImageArray.length) { setTimeout(function() { backgroundSequence() }, (secs * 1000))} else { k++; }
//     }, (secs * 1000) * i)
//   }
// }
// backgroundSequence();

// export { backgroundSequence };
