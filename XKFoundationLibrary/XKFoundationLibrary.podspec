Pod::Spec.new do |s|
 s.name         = "XKFoundationLibrary"
 s.version      = "0.0.1"
 s.summary      = "抽象基础类"
 s.description  = <<-DESC
                      XKFoundationLibrary
                      * Markdown 格式
                   DESC

s.homepage     = 'http://meishi.cc/'
s.license      = { :type => "MIT", :file => "license" }
s.author       = { 'meishi' => 'http://meishi.cc/' }

s.platform     = :ios, "7.0"
s.source       = { :git => "${SRCROOT}/XKFoundationLibrary" }
s.source_files  = '**/*.{h,m}'

#s.vendored_frameworks = "UMMobClick.framework"
#s.frameworks = ['CoreTelephony']
#s.library = ['c++', 'stdc++']
end