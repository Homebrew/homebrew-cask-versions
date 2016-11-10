cask 'docker-beta' do
  version '1.12.3.13798'
  sha256 'a316d0c36cd497d56e4ed4a11333e988c32a07ea7cc1e8d222c41bbbcdffa9d2'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: '99a42dea1a7deaf654e500758bf5344c9cc5fd506cd79de7daa8289df2077f36'
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
