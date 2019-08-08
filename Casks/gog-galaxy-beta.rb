cask 'gog-galaxy-beta' do
  version '2.0.4.10'
  sha256 '99fe887359e343846d1858ca2c67293cd8c7035f6b202b6db61acc4b5f7d5431'

  # cdn.gog.com was verified as official when first introduced to the cask
  url "https://cdn.gog.com/open/galaxy/client/827de963fce69d8015b80399e8df84e1/galaxy_client_#{version}.pkg"
  name 'GOG Galaxy Client'
  homepage 'https://goggalaxy.com/'

  pkg "galaxy_client_#{version}.pkg"

  uninstall delete:    '/Applications/GOG Galaxy.app',
            launchctl: [
                         'com.gog.galaxy.ClientService',
                         'com.gog.galaxy.commservice',
                       ]

  zap trash: [
               '/Library/LaunchDaemons/com.gog.galaxy.ClientService.plist',
               '/Library/PrivilegedHelperTools/com.gog.galaxy.ClientService',
               '/Users/Shared/GOG.com',
               '~/Library/Application Support/GOG.com',
               '~/Library/Preferences/com.gog.galaxy.cef.renderer.plist',
               '~/Library/Preferences/com.gog.galaxy.plist',
               '~/Library/Saved Application State/com.gog.galaxy.savedState',
             ]
end
