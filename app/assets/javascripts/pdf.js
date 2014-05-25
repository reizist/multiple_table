function option(type, rand) {
  var rand = $('#random').is(':checked');
  var op_type = $("#type .active").children("input").val();
  var hash = {format: 'pdf', debug: 1};
  hash["type"] = op_type;
  hash["random"] = rand;
  $.ajax({
    url: "/pdf/sample",
    type: 'GET',
    data: hash
  });
}
