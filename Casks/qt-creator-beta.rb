cask 'qt-creator-beta' do
  version '4.0.0-beta1'
  sha256 '001cf56f9f1961394bcb4921b50e3ca48295ff8e19598ac1890be57e054eacc4'

  url "http://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Beta'
  homepage 'https://www.qt.io/developers/'
  license :gpl

  app 'Qt Creator.app'
end
