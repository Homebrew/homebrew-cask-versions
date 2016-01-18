cask 'little-snitch-nightly' do
  version '3.6.2-nightly-(4358)'
  sha256 'fa6b24ba5b2afb9c2b18b3fd7869c830e6c45e31d71c154c524094a85d25bafd'

  url "https://www.obdev.at/downloads/littlesnitch/nightly/LittleSnitch-#{version}.dmg"
  name 'Little Snitch'
  homepage 'https://www.obdev.at/products/littlesnitch/index.html'
  license :commercial

  installer manual: 'Little Snitch Installer.app'

  zap delete: [
                '~/Library/Preferences/at.obdev.LittleSnitchNetworkMonitor.plist',
                '~/Library/Application Support/Little Snitch/rules.usr.xpl',
                '~/Library/Application Support/Little Snitch/configuration.xpl',
                '~/Library/Application Support/Little Snitch/configuration.user.xpl',
              ]
end
