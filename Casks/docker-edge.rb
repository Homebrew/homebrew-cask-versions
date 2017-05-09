cask 'docker-edge' do
  version '17.05.0-ce-mac9,17434'
  sha256 'f1d3a66116354122ca508c7377cb47a76c7b21b9e5243d68233d214eab7421fe'

  url "https://download.docker.com/mac/edge/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/edge/appcast.xml',
          checkpoint: '92cb5cb1c9e4fa9fdbddd722c5dc40057bdc9d1f81678c708368919bd2a4acb8'
  name 'Docker Community Edition for Mac (Edge)'
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
