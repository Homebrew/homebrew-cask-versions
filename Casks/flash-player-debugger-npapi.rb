cask 'flash-player-debugger-npapi' do
  version '23.0.0.207'
  sha256 '6ad4ced374e7f7c26ea777cbd09958672567f4319e10245a3631175f6323302a'

  # macromedia.com was verified as official when first introduced to the cask
  url "https://fpdownload.macromedia.com/pub/flashplayer/updaters/#{version.major}/flashplayer_#{version.major}_plugin_debug.dmg"
  appcast 'http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml',
          checkpoint: '50c4e19caa48710cf812e1549e5179124552b4bf760dc9aa719e09dd86d10fbe'
  name 'Adobe Flash Player NPAPI (plugin for Safari and Firefox) content debugger'
  homepage 'https://www.adobe.com/support/flashplayer/debug_downloads.html'

  pkg 'Install Adobe Flash Player Debugger.app/Contents/Resources/Adobe Flash Player Debugger.pkg'

  uninstall pkgutil: 'com.adobe.pkg.FlashPlayer',
            delete:  '/Library/Internet Plug-Ins/Flash Player.plugin'

  zap       delete: [
                      '~/Library/Caches/Adobe/Flash Player',
                      '~/Library/Logs/FlashPlayerInstallManager.log',
                    ]
end
