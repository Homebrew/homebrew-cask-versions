cask 'docker-beta' do
  version '17.03.0-ce-mac2,15657'
  sha256 '14d72c0c986d4955e12fa3cba094e9c2a4b03ed244fa43151661cf537965ef1c'

  url "https://download.docker.com/mac/beta/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: 'b2690032da2b2bd33b0e8ec005dad379f1a8064bd7137bda4123aed075daabd1'
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
