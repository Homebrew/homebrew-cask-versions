cask 'flash-npapi-beta' do
  version '26.0.0.115'
  sha256 '3f3859ed81d884b7cb10e2f95eef8d904e7fdfffe7def76e94571708c6e55ce5'

  # macromedia.com was verified as official when first introduced to the cask
  url 'https://fpdownload.macromedia.com/pub/labs/flashruntimes/flashplayer/install_flash_player_osx.dmg'
  name 'Adobe Flash Player NPAPI (plugin for Safari and Firefox)'
  homepage 'http://labs.adobe.com/technologies/flashruntimes/flashplayer/'

  pkg 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'

  uninstall pkgutil: 'com.adobe.pkg.FlashPlayer',
            delete:  '/Library/Internet Plug-Ins/Flash Player.plugin'

  zap       delete: [
                      '~/Library/Caches/Adobe/Flash Player',
                      '~/Library/Logs/FlashPlayerInstallManager.log',
                      '/Library/Internet Plug-Ins/flashplayer.xpt',
                    ]
end
