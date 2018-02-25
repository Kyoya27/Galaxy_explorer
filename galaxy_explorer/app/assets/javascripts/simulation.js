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
      var people = parseInt($('select[name="coeffPeople"] option:selected').val());
      var accom = parseInt($('select[name="coeffAccomodation"] option:selected').val());
      var guide = parseInt($('select[name="coeffGuide"] option:selected').val());
      var food = parseInt($('select[name="coeffFood"] option:selected').val());
      var out = parseInt($('select[name="coeffOut"] option:selected').val());
      var nbDays = parseInt($('input[name="days]"]').val());
      if(isNaN(nbDays)){
        nbDays = 1;
      }
      total = (people*peopleC + accom*accomC + guide*guideC + food*foodC + out*outC)*nbDays;
      $(".simuResult").append('<p>Vous Devriez Prévoir un budget de : '+ total +' $$</p>');
    })
  })
}

$(document).on('turbolinks:load', main());
