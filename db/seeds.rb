# coding: utf-8

# 默认配置项
# 如需新增设置项，请在这里初始化默认值，然后到后台修改
SiteConfig.delete_all
# 首页
# SiteConfig.index_html

# About Title HTML
SiteConfig.save_default("about_title", "美丽资讯")

SiteConfig.save_default("about_content_html", <<-eos
<div class="box" style="text-align:center;">
  <p>美丽资讯</p>
</div>
eos
)

SiteConfig.save_default("about_image_url", 
  "http://img5.imgtn.bdimg.com/it/u=2138704924,3329476703&fm=21&gp=0.jpg"
)
