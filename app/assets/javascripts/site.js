$(function(){
  $(document).on('click', "#contact_user", function(e){
    e.preventDefault();
    var self = $(this);

    $.ajax({
      method: "POST",
      url: self.data('url'),
      dataType: 'JSON',
      data: {
        contact: {
          first_name: $("#first_name").val(),
          last_name: $("#last_name").val(),
          email: $("#email").val(),
        }
      }
    }).done(function(data){
      $("#first_name").val("")
      $("#last_name").val("")
      $("#email").val("")
      $("#first_name").focus()
    }).fail(function(error){
      var data = error;
      console.log("==data", data)
    })
  })
})
