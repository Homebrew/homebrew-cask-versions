cask 'docker-edge' do
  version '17.06.0-rc4-ce-mac15,18357'
  sha256 '36146ccefe4101be190f6099852260c0af78b6b118b14805952ba4872da894e7'

  url "https://download.docker.com/mac/edge/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/edge/appcast.xml',
          checkpoint: '9442a13e46c70f0b7ea23f6b60cba8b489f8d31e791cc1624aafccfc090b25d4'
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
