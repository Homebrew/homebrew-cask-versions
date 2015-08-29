cask :v1 => 'little-snitch-nightly' do
  version '3.6-nightly-(4350)'
  sha256 'c4826574e8a7fef291733bc5b394121f0935b57450d864a9d6331e2c2908e4d3'

  url "https://www.obdev.at/downloads/littlesnitch/nightly/LittleSnitch-#{version}.dmg"
  name 'Little Snitch'
  homepage 'https://www.obdev.at/products/littlesnitch/index.html'
  license :commercial

  installer :manual => 'Little Snitch Installer.app'
  
  zap :delete => [
                  '~/Library/Preferences/at.obdev.LittleSnitchNetworkMonitor.plist',
                  '~/Library/Application Support/Little Snitch/rules.usr.xpl',
                  '~/Library/Application Support/Little Snitch/configuration.xpl',
                  '~/Library/Application Support/Little Snitch/configuration.user.xpl',
                 ]
end
