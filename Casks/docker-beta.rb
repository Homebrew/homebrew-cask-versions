cask 'docker-beta' do
  version '1.13.1-rc1-beta40,15241'
  sha256 '07cfda1b0294139985460c6012653349995fe020825f7af072b94ebfbb7dbd53'

  url "https://download.docker.com/mac/beta/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: '5985153e6fda255ca79fff6a6f098447f7ef96074d877704bcd0f51037725967'
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
