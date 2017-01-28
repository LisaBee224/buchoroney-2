$(document).ready(function(){
  // $forms;
  // $numberOfForms;
  $currentCount = 0;
  $(document).on('ajax:success', function(response){
    $currentCount++;
    if($currentCount == $numberOfForms){
      var partyId = window.location.pathname.split('/')[2];
      document.location.href = "/parties/"+partyId;
    }
  });

  $(".rsvp-submit").on("click", function(e){
    e.preventDefault();
    $forms = $('form');
    $numberOfForms = $forms.length;
    $.map($forms, function(form){
      $(form).trigger('submit.rails');
    });

  });

});
