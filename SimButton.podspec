
Pod::Spec.new do |s|
    s.name             = "SimButton"
    s.version          = "1.0.0"
    s.summary          = "Simply to implement a button on the text and icon of the horizontal or vertical arrangement."
    s.description      = <<-DESC
    Usually, we use imageEdgeInsets and titleEdgeInsets to implement a button on the text and icon of the horizontal or vertical arrangement, these settings of UIButton is very troublesome. SimButton set the desired effect by setting the iconPostion and iconTextMargin simply.
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
