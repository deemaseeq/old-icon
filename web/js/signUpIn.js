function sendLoginRequest($form) {
    $.post("SignInServlet", $form.serialize(), function(response) {
        response = response.trim();
        if(response === 'Succesful login.'){
            location.reload();
        } else {
            $("#errorMessageLogin").text(response);
        }
        
    });
}

$(document).on("submit", "#signUp", function(event) {
    var $form = $(this);

    $.post($form.attr("action"), $form.serialize(), function(response) {
        response = response.trim();
        if(response === 'Succesful register.'){       
            sendLoginRequest($form);
        } else {
            $("#errorMessageReg").text(response);
        }
        
    });

    event.preventDefault(); // Important! Prevents submitting the form.
});

$(document).on("submit", "#signIn", function(event) {
    var $form = $(this);

    sendLoginRequest($form);

    event.preventDefault(); // Important! Prevents submitting the form.
});