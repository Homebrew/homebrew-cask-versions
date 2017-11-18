cask 'docker-edge' do
  version '17.11.0-ce-rc4-mac39,20423'
  sha256 '92be36c4eeb5f0e7a54a23a82d60072d5ff082cbf70d7ac623eee01b9ba1d5c1'

  url "https://download.docker.com/mac/edge/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/edge/appcast.xml',
          checkpoint: '8a80953a12ee1a45acdc8f442d536773da6bbdaf6f70b717110c28c7d18bd85d'
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
