cask 'docker-edge' do
  version '2.0.0.0-beta1-mac77,28700'
  sha256 '37258c4aa8c29ab52b8d959bc18f83a2a6ff790a4e4c7b3156c87ccf5df93913'

  url "https://download.docker.com/mac/edge/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/edge/appcast.xml'
  name 'Docker Community Edition for Mac (Edge)'
  name 'Docker CE for Mac (Edge)'
  homepage 'https://www.docker.com/community-edition'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Docker.app'

  uninstall delete:    [
                         '/Library/PrivilegedHelperTools/com.docker.vmnetd',
                         '/usr/local/bin/docker',
                         '/usr/local/bin/docker-compose',
                         '/usr/local/bin/docker-credential-osxkeychain',
                         '/usr/local/bin/docker-machine',
                         '/usr/local/bin/hyperkit',
                         '/usr/local/bin/notary',
                         '/usr/local/bin/vpnkit',
                       ],
            launchctl: [
                         'com.docker.helper',
                         'com.docker.vmnetd',
                       ],
            quit:      'com.docker.docker'

  zap trash: [
               '~/Library/Application Scripts/com.docker.helper',
               '~/Library/Caches/KSCrashReports/Docker',
               '~/Library/Caches/com.docker.docker',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.docker.docker',
               '~/Library/Containers/com.docker.docker',
               '~/Library/Containers/com.docker.helper',
               '~/Library/Group Containers/group.com.docker',
               '~/Library/Preferences/com.docker.docker.plist',
             ],
      rmdir: [
               '~/Library/Caches/KSCrashReports',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data',
             ]
end
