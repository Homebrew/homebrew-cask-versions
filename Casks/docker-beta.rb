cask 'docker-beta' do
  version '1.13.0.14523'
  sha256 'e26e7060fb7906469499b811b0e29f11ea274fce639fbd3e5884b77b1a52bc10'

  url "https://download.docker.com/mac/beta/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/beta/appcast.xml',
          checkpoint: 'c38d5daf23da6f8a948488bd5be8acb2030e657b3e3563db59ace479b5459ca1'
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
