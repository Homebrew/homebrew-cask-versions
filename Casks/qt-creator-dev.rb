cask 'qt-creator-dev' do
  version '4.2.0-beta1'
  sha256 'eff829a57fc70747e74461401a5ff6bfc7d4cff49fa52acf2d2b047357f712f7'

  url "http://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator Dev'
  homepage 'https://www.qt.io/developers/'

  app 'Qt Creator.app'
end
