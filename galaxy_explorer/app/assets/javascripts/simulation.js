/*fucntion showSimu(){
  var x = document.getElementById("simRes");

  if(x.style.display === "none"){
    x.style.display = "block";
  }else {
    x.style.display = "none";
  }
}*/

function main(){
  var people;
  var accom;
  var guide;
  var food;
  var out;

  var total;

  $(document).ready(function(){
    $("#butSimu").click(function(e){
      $(".simuResult").text("");
      total = people + accom + guide + food + out;
      $(".simuResult").append('<p>'+ total +'</p>');
      console.log(people + accom + guide + food + out);
      //
    })
    $('select[name="coeffPeople"]').on('change', function(){
    people = parseInt($(this).val());
    });
    $('select[name="coeffAccomodation"]').on('change', function(){
    accom = parseInt($(this).val());
    });
    $('select[name="coeffGuide"]').on('change', function(){
    guide = parseInt($(this).val());
    });
    $('select[name="coeffFood"]').on('change', function(){
    food = parseInt($(this).val());
    });
    $('select[name="coeffOut"]').on('change', function(){
    out = parseInt($(this).val());
    });


    console.log("sauce");

  })
}

$(document).on('turbolinks:load', main());
