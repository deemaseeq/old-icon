$(document).on("submit", "#signIn", function(event) {
    var $form = $(this);

    $.post($form.attr("action"), $form.serialize(), function(response) {
        $("#errorMessage").text(response);
    });

    event.preventDefault(); // Important! Prevents submitting the form.
});