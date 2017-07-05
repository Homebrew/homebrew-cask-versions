cask 'adobe-air-beta' do
  version '26.0'
  sha256 :no_check # required as upstream package is updated in-place

  # fpdownload.macromedia.com was verified as official when first introduced to the cask
  url 'https://fpdownload.macromedia.com/pub/labs/flashruntimes/air/AdobeAIR.dmg'
  name 'Adobe AIR Beta'
  homepage 'http://labs.adobe.com/downloads/air.html'

  installer script: {
                      executable: 'Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer',
                      args:       ['-silent'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: 'Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer',
                      args:       ['-uninstall'],
                      sudo:       true,
                    },
            rmdir:  [
                      '/Applications/Adobe/Flash Player/AddIns',
                      '/Applications/Adobe/Flash Player',
                      '/Applications/Adobe',
                    ]

  zap delete: [
                '~/Library/Application Support/Adobe/AIR',
                '~/Library/Caches/com.adobe.air.ApplicationInstaller',
              ],
      rmdir:  '~/Library/Application Support/Adobe/'
end
