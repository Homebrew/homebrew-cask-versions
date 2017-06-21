cask 'docker-edge' do
  version '17.06.0-ce-rc5-mac16,18400'
  sha256 'fcc395fefad724739032108359dff63b82182e05e5804cd4cf796adc96cd3cd3'

  url "https://download.docker.com/mac/edge/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/edge/appcast.xml',
          checkpoint: '2e5e4b1a07f3aa36df67409c4bc0ab76d693d8455bd0581ded136d4b1038322e'
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
