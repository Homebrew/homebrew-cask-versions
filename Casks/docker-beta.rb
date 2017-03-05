cask 'docker-beta' do
  version '17.03.0-ce-mac1,15587'
  sha256 '6a3bada125706a4ac99608dd61d70ea55b0a8ab78740ee41d1f0d29e84c96870'

  url "https://download.docker.com/mac/beta/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: '35a2c3188a02bb52839ebb16e71273f104a676ab52ffae7323171960eb87c3aa'
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
