cask 'flash-ppapi-beta' do
  version '26.0.0.115'
  sha256 '2e2c25374cd33e63149ad806d220219e9cecfb188855350099450fab6a4f6cef'

  # macromedia.com was verified as official when first introduced to the cask
  url 'https://fpdownload.macromedia.com/pub/labs/flashruntimes/flashplayer/install_flash_player_osx_ppapi.dmg'
  name 'Adobe Flash Player PPAPI (plugin for Opera and Chromium)'
  homepage 'http://labs.adobe.com/technologies/flashruntimes/flashplayer/'

  pkg 'Install Adobe Pepper Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'

  uninstall pkgutil: 'com.adobe.pkg.PepperFlashPlayer',
            delete:  '/Library/Internet Plug-Ins/PepperFlashPlayer'

  zap       delete: [
                      '~/Library/Caches/Adobe/Flash Player',
                      '~/Library/Logs/FlashPlayerInstallManager.log',
                    ]
end
