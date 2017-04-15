cask 'smartgit-rc' do
  version '17.1-preview-6'
  sha256 '3281cc8cb49de85d4312727f25c15605176ef2e3d3a7581d98d191169f79ebfb'

  url "https://www.syntevo.com/static/smart/download/smartgit/smartgit-macosx-#{version}.dmg"
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
