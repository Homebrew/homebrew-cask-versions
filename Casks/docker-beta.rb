cask 'docker-beta' do
  version '1.13.0.14387'
  sha256 '39768c64b741f09f07cbcfa8ccdda9dae55b4b1d3bb998ea1d24fbb5d71d5c53'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: 'ff4b28973949ea186f43b2c1cf644c7767ee2a6d0271d2062bfd5220ed079c45'
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
