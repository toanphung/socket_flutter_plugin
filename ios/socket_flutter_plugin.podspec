#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'socket_flutter_plugin'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin.'
  s.description      = <<-DESC
A new Flutter plugin.
                       DESC
  s.homepage         = 'http://ongbut.net'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Ong But' => 'toanphungv@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'Socket.IO-Client-Swift'
  s.dependency 'Starscream'
  s.ios.deployment_target = '9.0'
end

