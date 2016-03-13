cask 'xbox360-controller-driver-beta' do
  version '0.15_beta5'
  sha256 '05103e1a45b1e22199ac1699d5eca1838e797395f74d07f0c771d60d03f5debe'

  url "https://github.com/360Controller/360Controller/releases/download/v#{version}_unofficial/360ControllerInstall_#{version}_unofficial.dmg"
  appcast 'https://github.com/360Controller/360Controller/releases.atom',
          checkpoint: 'b3f93a26f2cfc8c5f3987967c01392ca95ec71d4c062425b2b317c40e12f4ca7'
  name 'TattieBogle Xbox 360 Controller Driver (with improvements)'
  homepage 'https://github.com/360Controller/360Controller'
  license :gpl

  pkg 'Install360Controller.pkg'

  uninstall pkgutil:   'com.mice.pkg.Xbox360controller',
            launchctl: 'com.mice.360Daemon',
            kext:      [
                         'com.mice.Xbox360ControllerForceFeedback',
                         'com.mice.driver.Xbox360Controller',
                         'com.mice.driver.Wireless360Controller',
                         'com.mice.driver.WirelessGamingReceiver',
                       ],
            # Symlink to kext in /Library/Extensions is not removed
            # during :pkgutil phase of uninstall, so we delete it here.
            delete:    '/System/Library/Extensions/360Controller.kext'

  caveats do
    reboot
  end
end
