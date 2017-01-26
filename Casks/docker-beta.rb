cask 'docker-beta' do
  version '1.13.0,15140'
  sha256 '966faa3505f0ad04005e15ef6cee40de175a0044b4e9d02736713719701871dc'

  url "https://download.docker.com/mac/beta/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: '219193c2d2400fb15baead71720ec9deceb97180bdca01bf7e4cfb35d1c5d7fa'
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
