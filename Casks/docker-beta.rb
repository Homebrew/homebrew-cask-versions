cask 'docker-beta' do
  version '1.13.0.14840'
  sha256 '0b1bedca2f522b34df894cf1a3c9f91a69aa6ffa3858b9643c942fd0d3da03d4'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: '2ca4686158f5c132c821f7a009e1140a306541f0820694b8fe55d0ed6d9f0cd8'
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
