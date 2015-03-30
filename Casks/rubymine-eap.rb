cask :v1 => 'rubymine-eap' do
  version '141.96'
  sha256 'b1272a6211504ba93202239ae9daa4ca70945b699edd9340679397a36e7f57b4'

  url "http://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/RUBYDEV/RubyMine+EAP'
  license :commercial

  app 'RubyMine EAP.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  zap :delete => [
                  '~/Library/Application Support/RubyMine70',
                  '~/Library/Preferences/RubyMine70',
                 ]
end
