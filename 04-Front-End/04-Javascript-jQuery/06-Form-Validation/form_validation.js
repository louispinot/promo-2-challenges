  // Your validation code will go in there.
  // Write your validation functions, and bind events
  // in a jQuery DOM ready callback

var regexp = {
  first_name: /^[a-zA-Z]([a-zA-Z]|\s|-)*$/,
  last_name: /^[a-zA-Z]([a-zA-Z]|\s|-)*$/,
  address: /^[0-9]{1,5}[a-zA-Z\d\s\-\,\#()\.]+$/,
  country: /\w/,
  zip_code: /[0-9]{5}/,
  city: /^[a-zA-Z]([a-zA-Z]|\s|-)*$/,
  email: /^([a-zA-Z0-9_\.-]+)@([a-zA-Z0-9\.-]+)\.([a-z\.]{2,6})$/,
  mobile_phone: /[0-9]{10}/
};


$(document).ready(function() {

  $('.form-control').focusout(function(e){

    var key = $(this).attr("id");
    var correct_regex = regexp[key];

    if ( correct_regex.test($(this).val())) {
      $(this).parent().removeClass('has-error').addClass('has-success');
      ready_to_submit();
    }
    else {
      $(this).parent().removeClass('has-success').addClass('has-error');
      $('.submit-button').attr("disabled");
      $('.submit-button').text("Please fill all fields");
    }

  });

  $('.checkbox input').change(function(){
    if ($(this).prop("checked")){
      ready_to_submit();
    }
  });

});




function ready_to_submit() {
  if( !$('.form-group').hasClass(".has-error")
      && !($('.form-group').val() == null)
      && $('.checkbox input').prop("checked") ){

          $('.submit-button').removeAttr("disabled", "disabled");
          $('.submit-button').text("Submit !");
  };
};


// $('#first_name').focusout(function(e){
//   if ( valid_name.test($('#first_name').val())) {
//     if ( $('#first_name').parent().hasClass("has-error") ) {
//       $('#first_name').parent().removeClass("has-error")
//     };
//     $('#first_name').parent().addClass("has-success");
//   }
//   else {
//     if ( $('#first_name').parent().hasClass("has-success") ) {
//       $('#first_name').parent().removeClass("has-success")
//     };
//     $('#first_name').parent().addClass("has-error");
//   };
// });


// $('#last_name').focusout(function(e){
//   if ( valid_name.test($('#last_name').val())) {
//     if ( $('#last_name').parent().hasClass("has-error") ) {
//       $('#last_name').parent().removeClass("has-error")
//     };
//     $('#last_name').parent().addClass("has-success");
//   }
//   else {
//     if ( $('#last_name').parent().hasClass("has-success") ) {
//       $('#last_name').parent().removeClass("has-success")
//     };
//     $('#last_name').parent().addClass("has-error");
//   };
// });


// $('#address').focusout(function(e){
//   if ( valid_address.test($('#address').val())) {
//     if ( $('#address').parent().hasClass("has-error") ) {
//       $('#address').parent().removeClass("has-error")
//     };
//     $('#address').parent().addClass("has-success");
//   }
//   else {
//     if ( $('#address').parent().hasClass("has-success") ) {
//       $('#address').parent().removeClass("has-success")
//     };
//     $('#address').parent().addClass("has-error");
//   };
// });


// $('#zip_code').focusout(function(e){
//   if ( valid_zip.test($('#zip_code').val())) {
//     if ( $('#zip_code').parent().hasClass("has-error") ) {
//       $('#zip_code').parent().removeClass("has-error")
//     };
//     $('#zip_code').parent().addClass("has-success");
//   }
//   else {
//     if ( $('#zip_code').parent().hasClass("has-success") ) {
//       $('#zip_code').parent().removeClass("has-success")
//     };
//     $('#zip_code').parent().addClass("has-error");
//   };
// });


// $('#city').focusout(function(e){
//   if ( valid_name.test($('#city').val())) {
//     if ( $('#city').parent().hasClass("has-error") ) {
//       $('#city').parent().removeClass("has-error")
//     };
//     $('#city').parent().addClass("has-success");
//   }
//   else {
//     if ( $('#city').parent().hasClass("has-success") ) {
//       $('#city').parent().removeClass("has-success")
//     };
//     $('#city').parent().addClass("has-error");
//   };
// });


// $('#email').focusout(function(e){
//   if ( valid_email.test($('#email').val())) {
//     if ( $('#email').parent().hasClass("has-error") ) {
//       $('#email').parent().removeClass("has-error")
//     };
//     $('#email').parent().addClass("has-success");
//   }
//   else {
//     if ( $('#email').parent().hasClass("has-success") ) {
//       $('#email').parent().removeClass("has-success")
//     };
//     $('#email').parent().addClass("has-error");
//   };
// });


// $('#mobile_phone').focusout(function(e){
//   if ( valid_phone.test($('#mobile_phone').val())) {
//     if ( $('#mobile_phone').parent().hasClass("has-error") ) {
//       $('#mobile_phone').parent().removeClass("has-error")
//     };
//     $('#mobile_phone').parent().addClass("has-success");
//   }
//   else {
//     if ( $('#mobile_phone').parent().hasClass("has-success") ) {
//       $('#mobile_phone').parent().removeClass("has-success")
//     };
//     $('#mobile_phone').parent().addClass("has-error");
//   };
// });


















