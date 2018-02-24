/*fucntion showSimu(){
  var x = document.getElementById("simRes");

  if(x.style.display === "none"){
    x.style.display = "block";
  }else {
    x.style.display = "none";
  }
}*/

function main(){

  var peopleC;
  var accomC ;
  var guideC ;
  var foodC ;
  var outC ;
  var total;

  $(document).ready(function(){

    peopleC = parseFloat($("#Ppeo").text());
    accomC = parseFloat($("#Pacc").text());
    guideC = parseFloat($("#Pgui").text());
    foodC = parseFloat($("#Pfoo").text());
    outC = parseFloat($("#Pout").text());

    $("#butSimu").click(function(e){
      $(".simuResult").text("");
      var people = parseInt($('select[name="simulation[coeffPeople]"] option:selected').val());
      var accom = parseInt($('select[name="simulation[coeffAccomodation]"] option:selected').val());
      var guide = parseInt($('select[name="simulation[coeffGuide]"] option:selected').val());
      var food = parseInt($('select[name="simulation[coeffFood]"] option:selected').val());
      var out = parseInt($('select[name="simulation[coeffOut]"] option:selected').val());
      var nbDays = parseInt($('input[name="simulation[days]"]').val());
      if(isNaN(nbDays)){
        nbDays = 1;
      }
      total = (people*peopleC + accom*accomC + guide*guideC + food*foodC + out*outC)*nbDays;
      $(".simuResult").append('<p>'+ total +'</p>');
    })
  })
}

$(document).on('turbolinks:load', main());
