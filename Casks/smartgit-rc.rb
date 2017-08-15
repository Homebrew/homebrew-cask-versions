cask 'smartgit-rc' do
  version '17.1-preview-12'
  sha256 'ea4f9c688cc73096a619aeda5004999851401ccf3255e117378e217e42acf490'

  url "https://www.syntevo.com/static/smart/download/smartgit/smartgit-macosx-#{version}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog-eap.txt',
          checkpoint: 'af1524ed49e92d054e6f58b83b5d0f0f0309c57b113619daeece50e9b5adc98a'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
