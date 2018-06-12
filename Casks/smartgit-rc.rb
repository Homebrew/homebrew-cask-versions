cask 'smartgit-rc' do
  version '18.1-rc-3'
  sha256 'f992df0b378760ed516a7dbb481a1f6a9a014fe6933b0a232dbcef7df5ac9149'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog-eap.txt'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
