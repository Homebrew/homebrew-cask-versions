cask 'docker-edge' do
  version '17.05.0-ce-rc1-mac8,16582'
  sha256 '82fe284fd4022778324f1030b1675ba827e2ec95f466663fa0645a1b112c43c3'

  url "https://download.docker.com/mac/edge/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/edge/appcast.xml',
          checkpoint: '4458e68fcf0bb0d80d6d9f64d042d919556690a9bf1fd70e78236b767d27fe4f'
  name 'Docker Community Edition for Mac (Edge)'
  homepage 'https://www.docker.com/community-edition'

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
