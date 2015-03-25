cask :v1 => 'rubymine-eap' do
  version '141.96'
  sha256 '1fb0c817a788dd2e3f01bb7ad942701073b86a66456a905af733984d202b2f3b'

  url "http://download.jetbrains.com/ruby/RubyMine-#{version}-custom-jdk-bundled.dmg"
  homepage 'http://confluence.jetbrains.com/display/RUBYDEV/RubyMine+EAP'
  license :commercial

  app 'RubyMine EAP.app'
end
