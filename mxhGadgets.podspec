Pod::Spec.new do |s|
s.name         = 'mxhGadgets'
s.version      = '1.5'
s.summary      = 'ios button tools'
s.description  = 'mxhGadgets,for ios button tools'

s.homepage     = 'https://github.com/maoxiaohong/mxhGadgets'
s.license      = 'MIT'
s.authors      = {'maoxiaohong' => '825823903@qq.com'}
s.platform     = :ios, '6.0'
s.source       = {:git => 'https://github.com/maoxiaohong/mxhGadgets.git', :tag => s.version}
s.source_files = 'mxhGadgets/*.{h,m}'
s.resources = "mxhGadgets/**/*.{png}"
s.requires_arc = true
end

