cask 'qt-creator-dev' do
  version '4.10.0-beta1'
  sha256 '579d34fc6dc83df0d885415830d2c8890e70b0efaee7730db04814e8513f2b66'

  url "https://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Dev'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
