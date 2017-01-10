cask 'docker-beta' do
  version '1.13.0.14875'
  sha256 'a7bfc85ac9b07d96f2c8c2bc1bf5c6231ae0cbe4c2b371e68808744e72984587'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: 'e6b2acbfb534df07d08653e41349de6b0180a503d4b44c1728e3d3b3f8fb74b6'
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
