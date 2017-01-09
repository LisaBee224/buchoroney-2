(function() {


}).call(this);
 $(document).ready(function(){
$("li").on("click", function(e){
  console.log('click');
   $(".nav").find(".active").removeClass("active");
   $(e.target).addClass("active");
});


 $(document).ready(function(){
  $('.thing').click(function(){
    console.log("hey");
  });
 });
