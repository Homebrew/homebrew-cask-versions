cask 'docker-beta' do
  version '1.12.3.13397'
  sha256 '4667ebf8bce72c8907025e5d125adc9f2362626bf2acef0d2a2973dd23b29416'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: '6299f76aad8cad13ea2cc2b4c9bb4a8b71107967131c8761673b68af477c5592'
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
