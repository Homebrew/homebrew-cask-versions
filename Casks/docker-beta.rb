cask 'docker-beta' do
  version '1.12.1.12048'
  sha256 '8fbc16cd543742723c3b1a9add2220061c40ba22a31ae7122db8c25cbaa3f27a'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: '39e3ad632ea163c7780795ced15ed49fa402d555a12409cbef6bd53a735b80de'
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
