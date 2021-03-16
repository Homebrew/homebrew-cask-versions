cask "qt-creator-dev" do
  version "4.15.0-beta1"
  sha256 "d0ee9cfda45aa49eb8a587b1ddedace27c922440d7948965d918726a561c7cbd"

  url "https://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name "Qt Creator Dev"
  homepage "https://www1.qt.io/developers/"

  app "Qt Creator.app"
end
