cask 'docker-edge' do
  version '17.06.0-rc2-ce-mac14,18280'
  sha256 '938790287fa6c4bf94858a05fbf4a9cda9b3f641dcbe54710a5b8880a6104136'

  url "https://download.docker.com/mac/edge/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/edge/appcast.xml',
          checkpoint: 'e6b8be3b34526dea511b46478aef47c2cfbdefe9d3479df0daa4363b851edc55'
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
