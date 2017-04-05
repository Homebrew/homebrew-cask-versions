cask 'docker-beta' do
  version '17.04.0-ce-rc2-mac6,16165'
  sha256 '57f41e914c180d17449f6872d66df7a5a7555c418ce32ce88e13e10462cbcd75'

  url "https://download.docker.com/mac/edge/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/edge/appcast.xml',
          checkpoint: '078f74fdfcda6575ef06024f0a265057ca3241612603c6a38b4f2f27b0b538a9'
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
