$(document).ready(function(){

    var url = document.URL;//取得当前页的URL
    if(/site_configs/.test(url.toLowerCase()))
    {
      $("#cpanelSiteConfigs").addClass("current");
    }
    else if(/slides/.test(url.toLowerCase()))
    {
      $("#cpanelSlides").addClass("current");
    }
    else if(/products/.test(url.toLowerCase()))
    {
      $("#cpanelProducts").addClass("current");
    }
    else if(/positions/.test(url.toLowerCase()))
    {
      $("#cpanelPositions").addClass("current");
    }
    else if(/news/.test(url.toLowerCase()))
    {
      $("#cpanelNews").addClass("current");
    }
    else
    {
      $("#cpanelHome").addClass("current");
    }
});