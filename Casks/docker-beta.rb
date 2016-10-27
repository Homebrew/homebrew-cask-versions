cask 'docker-beta' do
  version '1.12.3.13499'
  sha256 'e36f1e0811f225780b62205013a48fd7c7d4149015316d8362209a362fcaa80d'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: 'a00dac087b868d86f8ee0b9e642bdd3e8a4c6529e0bb778bb0eed6f1c31a8b74'
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
