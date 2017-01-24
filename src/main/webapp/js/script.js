/*
 * Formulario de Login
 * */

$(function() {

    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
});


$(function() {
	 
    if (localStorage.chkbx && localStorage.chkbx != '') {
        $('#remember').attr('checked', 'checked');
        $('#username').val(localStorage.usrname);
        $('#password').val(localStorage.pass);
    } else {
        $('#remember').removeAttr('checked');
        $('#username').val('');
        $('#password').val('');
    }

    $('#login-form').on('submit', function() {
       
    	 if ($('#remember').is(':checked')) {
             // save username and password
             localStorage.usrname = $('#username').val();
             localStorage.pass = $('#password').val();
             localStorage.chkbx = $('#remember').val();
         } else {
             localStorage.usrname = '';
             localStorage.pass = '';
             localStorage.chkbx = '';
         }
     });
    });
    
