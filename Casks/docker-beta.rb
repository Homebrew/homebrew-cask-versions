cask 'docker-beta' do
  version '1.12.3.13640'
  sha256 'dbce453e68ccfa671a4e43f92b7bb1f3dfbad4538935b579c86bf7f203af2dce'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: '85d49f039e375a62d59771aeefee4f24b7c6da0de73aa7745b963686042398c7'
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
