cask 'docker-beta' do
  version '1.12.1.11807'
  sha256 'e1ef592d7aa9d6bb66ac6bff94c4f5b9cbe8da088984cae0f2ab6a505b514b50'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: '4e009f0ef12ef38f3dfc9cc5fb2352d74c28659aebaaf439929dccfeaf2d64c7'
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
