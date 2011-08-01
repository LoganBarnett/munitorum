$(document).ready(function () {
  $('#armylists').each(function () {
    $.ajax({
        type: 'GET',
        dataType: 'json',
        url: 'armylists',
        success: function(data) {
          $.tmpl($('#armylist-row-template'), data).appendTo($('#armylists-body'));
        }
    });
  });
  
});