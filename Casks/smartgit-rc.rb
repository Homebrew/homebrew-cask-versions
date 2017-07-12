cask 'smartgit-rc' do
  version '17.1-preview-10'
  sha256 'e8011401f99b9b20d350987af6bc55dea31481202ea2a1f5e21ad7450ef32cb3'

  url "https://www.syntevo.com/static/smart/download/smartgit/smartgit-macosx-#{version}.dmg"
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
