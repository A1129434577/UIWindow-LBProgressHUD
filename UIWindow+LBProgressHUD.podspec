Pod::Spec.new do |spec|
  spec.name         = "UIWindow+LBProgressHUD"
  spec.version      = "1.0.0"
  spec.summary      = "对MBProgressHUD二次封装。"
  spec.description  = "对MBProgressHUD二次封装，并可外部使用类目给LBProgressHUD添加类方法(+lb_configHUD:forType:)统一配置HUD样式，使其使用起来更灵活且方便。"
  spec.homepage     = "https://github.com/A1129434577/UIWindow-LBProgressHUD"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "刘彬" => "1129434577@qq.com" }
  spec.platform     = :ios
  spec.ios.deployment_target = '8.0'
  spec.source       = { :git => 'https://github.com/A1129434577/UIWindow-LBProgressHUD.git', :tag => spec.version.to_s }
  spec.dependency     "MBProgressHUD"
  spec.dependency     "LBCommonComponents/Macros"
  spec.source_files = "UIWindow+LBProgressHUD/**/*.{h,m}"
  spec.resource     = "UIWindow+LBProgressHUD/**/*.bundle"
  spec.requires_arc = true
end
#--use-libraries
