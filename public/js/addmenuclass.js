$(document).ready(function(){

    var url = document.URL;//取得当前页的URL
    if(/site_configs/.test(url.toLowerCase()))
    {
      $("#cpanelSiteConfigs").addClass("active");
    }
    else if(/slides/.test(url.toLowerCase()))
    {
      $("#cpanelSlides").addClass("active");
    }
    else if(/products/.test(url.toLowerCase()))
    {
      $("#cpanelProducts").addClass("active");
    }
    else if(/positions/.test(url.toLowerCase()))
    {
      $("#cpanelPositions").addClass("active");
    }
    else if(/news/.test(url.toLowerCase()))
    {
      $("#cpanelNews").addClass("active");
    }
    else if (/resumes/.test(url.toLowerCase())) {
      $("#cpanelPositions").addClass("active");
    }
    else
    {
      $("#cpanelHome").addClass("active");
    }
});