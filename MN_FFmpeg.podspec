Pod::Spec.new do |s|
# 名称
s.name         = "MN_FFmpeg"
# 版本
s.version      = "0.0.1"
# 描述
s.summary      = "iOS FFmpeg"
# 详细描述
s.description  = "FFMpeg iOS版本"
# 项目github地址
s.homepage     = "https://github.com/BIBiBI12/MN_FFmpeg"
s.source       = { :git => "https://github.com/BIBiBI12/MN_FFmpeg.git", :tag => "#{s.version}" }
s.license      =  "MIT"
# 联系方式
s.author             = { "me_zqx" => "me_zqx@163.com" }

s.requires_arc = false

s.ios.deployment_target = "9.0"

# 源码路径
# s.source_files  = "Classes", "MN_FFmpeg/Classes/**/*"
#s.public_header_files = "Classes/**/*.h"
s.xcconfig  = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/MN_FFmpeg/Classes/include"' }
    
# s.static_framework = true
# 依赖第三方.a文件
#s.vendored_libraries  = 'MN_FFmpeg/Lib/*.{a}'
# 依赖系统framworks
s.frameworks = 'VideoToolbox', 'CoreGraphics', 'CoreMedia', 'AudioToolbox', 'Foundation'
# 依赖系统lib ps： 去除所有lib
#s.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'

s.default_subspec = 'precompiled'

s.subspec 'precompiled' do |ss|
    ss.source_files  = "Classes", "MN_FFmpeg/Classes/**/*"
    ss.public_header_files = 'MN_FFmpeg/Classes/include/**/*.h'
    ss.header_mappings_dir = 'MN_FFmpeg/Classes/include'
    ss.vendored_libraries  = 'MN_FFmpeg/Lib/*.{a}'
    ss.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'
end
end




