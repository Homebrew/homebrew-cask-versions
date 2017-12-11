cask 'adobe-air-beta' do
  version :latest
  sha256 :no_check

  # fpdownload.macromedia.com was verified as official when first introduced to the cask
  url 'https://fpdownload.macromedia.com/pub/labs/flashruntimes/air/AdobeAIR.dmg'
  name 'Adobe AIR Beta'
  homepage 'https://labs.adobe.com/downloads/air.html'

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

  zap trash: [
               '~/Library/Application Support/Adobe/AIR',
               '~/Library/Caches/com.adobe.air.ApplicationInstaller',
             ],
      rmdir: '~/Library/Application Support/Adobe/'
end
