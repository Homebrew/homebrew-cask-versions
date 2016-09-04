cask 'docker-beta' do
  version '1.12.1.11525'
  sha256 '95cdef690943272b00f701c06f1ef4954c0cae7a3a454e91f1d5cad407252e1f'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: 'fcfc6aa7674b26ff0ee1131fcda26dd1be14be88e666fabe88a631ba591bf231'
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
