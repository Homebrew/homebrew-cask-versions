cask 'docker-beta' do
  version '17.03.1-ce-rc1-mac3,15924'
  sha256 '95a6c3b7531fb7778c722425a002f16709f8ddd3731b5725c6aa5fbd3e2e5c4d'

  url "https://download.docker.com/mac/edge/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: 'b65d52e05656e04d71dc0712410a4906d8ffbd76abdd54fa1766ece6aae326cd'
  name 'Docker for Mac Beta'
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
