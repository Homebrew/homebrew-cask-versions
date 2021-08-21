cask "qt-creator-dev" do
  version "5.0.0-rc1"
  sha256 "6b209b776d850f07c8719475a3f90765dc1ea637acd659414bcf9967df600941"

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
