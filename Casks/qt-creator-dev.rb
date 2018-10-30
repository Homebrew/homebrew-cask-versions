cask 'qt-creator-dev' do
  version '4.8.0-beta1'
  sha256 'c90242f3314129cd2e1a145d4e4cc07d6d1b2488aafefbf7f16d90d7dff33c78'

  url "https://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Dev'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
