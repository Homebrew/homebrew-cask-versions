cask 'docker-beta' do
  version '1.13.1-rc2-beta41,15300'
  sha256 '287ff65a3a897b83384fca33e34e06dba32a741c537742eac69c47d56c1b7d12'

  url "https://download.docker.com/mac/beta/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: '1b0b06ec82619d38eeabf47bb37b20196c58855244bbcbab765c92bd28a9176d'
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
