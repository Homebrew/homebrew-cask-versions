cask 'smartgit-rc' do
  version '18.1-rc-1'
  sha256 '79d883cd9d4c3f997eeda88823e64042b0890f35b336febb4ffd4d30c2aa1240'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog-eap.txt',
          checkpoint: '3c93dd80e173233d4c46c5aeb1b2a430dbdb7a82f07bfb77a3052fbe64d61928'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
