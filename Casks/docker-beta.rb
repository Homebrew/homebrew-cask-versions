cask 'docker-beta' do
  version '1.13.0.14779'
  sha256 '177cb4f1b666c97504506bded45d43450a0a8c15fddad867b9e7228f4ac05f52'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: '6209b4cbe97c516a8477ed9bcd230b0095417183fa2b95b69f716b9b5faa6bfa'
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
