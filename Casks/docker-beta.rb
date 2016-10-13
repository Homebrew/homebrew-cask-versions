cask 'docker-beta' do
  version '1.12.2.12906'
  sha256 '92f29aac98c7482fbebfc4534dea79950ea3f13fbbb9cebaed7d68de772bc692'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: '38c3e1ce13e05f918cd05c9e8b5bf7ae7c2ed7ea6ef490864cfb4db9f34f4b76'
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
