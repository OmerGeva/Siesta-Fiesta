import $ from 'jquery';
import 'select2';

function formatState (state) {
  var couch = "https://cdn1.iconfinder.com/data/icons/furniture-flat-8/64/Furniture-Flat_Couch-512.png";
  var tent = "https://images.vexels.com/media/users/3/127706/isolated/preview/11e1ab5b9929f2b614b5a542f5e1898e-flat-tent-icon-by-vexels.png";
  var yoga = 'https://cdn4.iconfinder.com/data/icons/healthy-5/64/yoga-mat-exercise-meditation-512.png';
  if (!state.id) {
    return state.text;
  }
  if (state.text==="couch"){
    var $state = $(
    `<span><img src="${couch}" class="img-flag", style="height: 30px;"" /> Couch</span>`
  );
  }else if(state.text==="yoga mat")
  {
    console.log(state.text);
    var $state = $(
    `<span><img src="${yoga}" class="img-flag", style="height: 30px;"" /> Yoga Mat</span>`
  );
  }else {
    var $state = $(
    `<span><img src="${tent}" class="img-flag", style="height: 30px;"" /> Tent</span>`
  );
  }
  // var $state = $(
  //   '<span><img src="' + baseUrl + '/' + state.element.value.toLowerCase() + '.png" class="img-flag" /> ' + state.text + '</span>'
  // );
  return $state;
};


const initSelect2 = () => {
  $('.select2').select2({
    templateResult: formatState
  })
};

export { initSelect2 };
