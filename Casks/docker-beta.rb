cask 'docker-beta' do
  version '1.13.0.15013'
  sha256 'b2a907b095636615893bcef7cf9e4b29d6cdfda5fb04ccca11ea335b992a6823'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: 'd0629e85bba66e5aeef8f2444a97324bdb716a06808511c47e2a3143352f6db6'
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
