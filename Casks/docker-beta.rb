cask 'docker-beta' do
  version '1.12.1.12100'
  sha256 '40d2f87c5dcdb3c1a3247711f6462d8b344f73b1b3264640e7f2413544131e86'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: 'b5ce212607f36fa9bbb2f3aa7df65154cd1cd073f0e602262e5bbd9a05a1870d'
  name 'Docker for Mac Beta'
  homepage 'https://www.docker.com/products/docker'
  license :gratis

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
