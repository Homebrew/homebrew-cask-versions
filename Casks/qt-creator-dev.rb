cask "qt-creator-dev" do
  version "4.15.0-rc1"
  sha256 "02a1dcdc0c8d607b8b8a4493573871fd5832909984d6e73e2226f8a6e2f92437"

  url "https://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name "Qt Creator Dev"
  desc "IDE for application development"
  homepage "https://www1.qt.io/developers/"

  livecheck do
    url "https://download.qt.io/development_releases/qtcreator/"
    strategy :page_match do |page|
      version_major_minor = page[%r{href="(\d+(?:\.\d+)*)/"}i, 1]
      version_page = Net::HTTP.get(URI.parse("https://download.qt.io/development_releases/qtcreator/#{version_major_minor}/"))
      version_page[%r{href="(\d+(?:\.\d+)*-(?:rc|beta)\d*)/"}i, 1]
    end
  end

  app "Qt Creator.app"
end
