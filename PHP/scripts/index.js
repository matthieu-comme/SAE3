$(document).ready(function () {
  $(".options").hide();
  $(".table").hide();
  var last;
  var last_table;

  // afficher et effacer les infos de la table survolée
  $(".nav_table").mouseenter(function () {
    if (last) {
      last_table.hide();
      last.find("ul").hide();
    }
    $(this).find("ul").show();
    var table = $(this).children().first().text();
    $("#" + table).show();
  });

  $(".nav_table").mouseleave(function () {
    last = $(this);
    var table = $(this).children().first().text();
    last_table = $("#" + table);
  });
});
