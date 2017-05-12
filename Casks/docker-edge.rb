cask 'docker-edge' do
  version '17.05.0-ce-mac11,17656'
  sha256 '1ae2d1664b834508ec507268e5802eb73c30840a996c6cbc14214ab29a1ec8bd'

  url "https://download.docker.com/mac/edge/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/edge/appcast.xml',
          checkpoint: '1b7dd6a5192139d07c425bd76203ca7c0b8818abd78d26784a13fb34e3d0e34f'
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
