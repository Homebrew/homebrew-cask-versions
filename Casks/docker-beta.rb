cask 'docker-beta' do
  version '1.13.0.15084'
  sha256 'cd6bc97f4d3b1b70c8202a2921b06f02f9edbdc7d4badba92285f9bacd5ea965'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: 'd1df9b75158b5125ef8ceee0a9cbfbb2e5c1868d7a4172361336579b74263c45'
  name 'Docker for Mac Beta'
  homepage 'https://www.docker.com/products/docker'

  auto_updates true

  app 'Docker.app'

  uninstall quit: 'com.docker.docker'

  zap delete: [
                '~/.docker',
                '~/Library/Caches/com.docker.docker',
                '~/Library/Containers/com.docker.docker',
                '~/Library/Preferences/com.docker.docker.plist',
                '~/Library/Group Containers/group.com.docker',
              ]
end
