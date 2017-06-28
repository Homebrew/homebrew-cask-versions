cask 'docker-edge' do
  version '17.06.0-ce-mac17,18432'
  sha256 'afe78bb9734b2e0cca623418715a0c7b249a18032fa8f658c0307d1d41bc478e'

  url "https://download.docker.com/mac/edge/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/edge/appcast.xml',
          checkpoint: 'd513c640e5da154f9acd23e6144bd8113da2ab65f889a3e76476e760cbc57644'
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
