cask :v1 => 'little-snitch-nightly' do
  version '3.6.1-nightly-(4354)'
  sha256 '405394d727091586cc90e80964faa72b27efa5ca9171a2aa7cff9a7d32350be2'

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
