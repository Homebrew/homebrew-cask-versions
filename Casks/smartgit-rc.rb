cask 'smartgit-rc' do
  version '18.2-rc-3'
  sha256 '617b4d7fe949e8a5c1b56c1d8449417f6324be366c7fc9d7ceea3562dc2e8925'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog-eap.txt'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
