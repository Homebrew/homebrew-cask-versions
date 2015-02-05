cask :v1 => 'webstorm-eap' do
  version '140.2167'
  sha256 'd392bc679ee6c8b7d71e92af8cb46c4996f5541aa73cada84a3294c59e809cc8'

  url "http://download-cf.jetbrains.com/webstorm/WebStorm-EAP-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+EAP'
  license :commercial

  app 'WebStorm 10 EAP.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  zap :delete => [
                  '~/Library/Application Support/WebStorm10',
                  '~/Library/Preferences/WebStorm10',
                 ]
end
