cask 'docker-beta' do
  version '1.13.0.14969'
  sha256 '7d380dd747f8967a7f5b533d25916321ba9df0e1e4b1f7ea7f6888224cd731a0'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: 'bd03b7d97db51e7e59accea371aceaa6afb4fffb29fdc6684ee5a7684ddaa689'
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
