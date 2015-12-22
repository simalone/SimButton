
Pod::Spec.new do |s|
    s.name             = "SimButton"
    s.version          = "1.0.0"
    s.summary          = "非常简单的图片和文本排列显示的按钮"
    s.description      = <<-DESC
    非常简单的图片和文本排列显示的按钮。支持上下左右中五种位置。
    DESC
    s.homepage         = "https://github.com/simalone/"
    s.license          = 'MIT'
    s.author           = { "Xubin Liu" => "liuxb661@163.com" }
    s.source           = { :git => "https://github.com/simalone/SimButton.git", :tag => '1.0.0' }
    s.platform         = :ios, '6.0'
    s.requires_arc     = true
    s.source_files     = "SimButton/*.{h,m}"
    s.public_header_files = ["SimButton/SimButton.h"]

    s.dependency 'SimPodsPublic', '~> 1.0.0'

end
