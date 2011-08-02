$(document).ready(function () {
  // $('#armylists').each(function () {
  //   $.ajax({
  //       type: 'GET',
  //       dataType: 'json',
  //       url: 'armylists',
  //       success: function(data) {
  //         $.tmpl($('#armylist-row-template'), data).appendTo($('#armylists-body'));
  //       }
  //   });
  // });
  
  // $('a.armylist.edit').live('click', function() {
  //   var id = $(this).attr('armylist-id');
  //   $('#armylist-edit-row-' + id).toggle();
  //   $('#armylist-row-' + id).toggle();
  //   var selectedRace = $('#armylist-row-' + id).children('select option:selected').text();
  //   $('#armylist-edit-row-' + id).children('select option').each(function () {
  //     if ($(this).text() == selectedRace) {
  //       $(this).attr('selected', 'selected');
  //     }
  //   });
  // });
});