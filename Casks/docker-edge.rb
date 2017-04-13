cask 'docker-edge' do
  version '17.04.0-ce-mac7,16352'
  sha256 '3b943c031317dce773393accdb82396355837d23520ef9f28d96c38e0ab05c09'

  url "https://download.docker.com/mac/edge/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/edge/appcast.xml',
          checkpoint: 'd4c29f943d9857ad856903086f24b21a1d8bac4a2b19759565c08c07b1c25608'
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
