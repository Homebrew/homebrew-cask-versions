cask 'qt-creator-dev' do
  version '4.0.0-rc1'
  sha256 '0b0e9b30f790b73924d3863fe7777268a96edbf66ab8a9961e7de1075856a28f'

  url "http://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Dev'
  homepage 'https://www.qt.io/developers/'
  license :gpl

  app 'Qt Creator.app'
end
