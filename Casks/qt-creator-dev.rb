cask 'qt-creator-dev' do
  version '4.10.0-rc1'
  sha256 'f64c17e546eeb2e025fec4bb458909e7b7bdfa8e899090a06bf6af1b9d19ac19'

  url "https://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Dev'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
