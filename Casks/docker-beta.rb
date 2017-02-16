cask 'docker-beta' do
  version '1.13.1-beta42,15350'
  sha256 '7ebb88129e3cec7c196cac60ec8bf2b3bd7da3f541f8e8a94cf3aae1e340f194'

  url "https://download.docker.com/mac/beta/#{version.after_comma}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: 'a6d4a82b2f54819e4dc7329f624931800c4bef73a81f33097231df46029339f9'
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
