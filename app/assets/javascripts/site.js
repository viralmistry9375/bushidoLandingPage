$(function(){
  $(document).on('click', "#contact_user", function(e){
    e.preventDefault();
    var self = $(this);

    if ($("#first_name").val() != "" && $("#last_name").val() != "" && $("#email").val() != "") {
      if (isEmail($("#email").val())) {
        $('.return-msg').html('');
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
      } else {
        $('.return-msg').html('Email is invalid.');
      }
    } else {
      $('.return-msg').html('Please fill all the fields.');
    }
  })
})

function isEmail(email) {
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email);
}
