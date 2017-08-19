cask 'docker-edge' do
  version '17.07.0-ce-rc2-mac22,18909'
  sha256 '39111d82fa90a4102567adac1b62fc811ffdf79f15e856beea1e6d350fe39614'

  url "https://download.docker.com/mac/edge/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/edge/appcast.xml',
          checkpoint: '7cd068249af8f3035a76fa2e9f2a8bd9b647d552d59cd1930443d3e057d2849b'
  name 'Docker Community Edition for Mac (Edge)'
  name 'Docker CE for Mac (Edge)'
  homepage 'https://www.docker.com/community-edition'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Docker.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.docker.vmnetd',
            launchctl: [
                         'com.docker.helper',
                         'com.docker.vmnetd',
                       ],
            quit:      'com.docker.docker'

  zap delete: [
                '~/Library/Application Scripts/com.docker.helper',
                '~/Library/Caches/KSCrashReports/Docker',
                '~/Library/Caches/com.docker.docker',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.docker.docker',
                '~/Library/Containers/com.docker.docker',
                '~/Library/Containers/com.docker.helper',
                '~/Library/Group Containers/group.com.docker',
              ],
      trash:  '~/Library/Preferences/com.docker.docker.plist',
      rmdir:  [
                '~/Library/Caches/KSCrashReports',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data',
              ]
end
