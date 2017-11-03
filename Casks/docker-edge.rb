cask 'docker-edge' do
  version '17.11.0-ce-rc2-mac37,20033'
  sha256 '1f1e5ec67209d437fb2344cef5d7f4ee587fb424e6b07769d91af473d7df58e3'

  url "https://download.docker.com/mac/edge/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/edge/appcast.xml',
          checkpoint: 'a4cc8cda09a99ab81702781f09570dd4170f1e29d23cadf40e0cded1eded2f51'
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
