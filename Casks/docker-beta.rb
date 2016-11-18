cask 'docker-beta' do
  version '1.12.3.13946'
  sha256 '75d7cd363bba93ef58204f86bec854cdfc9cb43d9e8a87b2f87c63474ad2f011'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: '960ef470e8c6904a813fff6890a71f68b0dfa3f1a605f908399bdd7e59a0c522'
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
