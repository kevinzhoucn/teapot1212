  $(document).ready(function(){
    $("li").click(function(){
      // alert('what');
      var idno = "#content" + $(this).attr('id').substr($(this).length-2,$(this).length);
      // alert(idno);
      $("div[id^='content']").hide();
      $(idno).fadeIn();
    });
  });