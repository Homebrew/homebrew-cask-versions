cask 'docker-edge' do
  version '17.06.0-rc1-ce-mac13,18169'
  sha256 '0338b32d772078cd0b4de3589f753c39ac9184dc7dde4901f38ec620a14db88c'

  url "https://download.docker.com/mac/edge/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/edge/appcast.xml',
          checkpoint: 'ea41874d2d48f4fdf01fdb8a9febd83e357db7984419a4eef72090c896f53570'
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
