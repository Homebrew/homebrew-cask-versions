cask "qt-creator-dev" do
  version "8.0.0-beta2"
  sha256 "b0673397646cd7d3b6b239599f9662dbcb25199cfbe71f85e19c05594814cd1a"

  url "https://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name "Qt Creator Dev"
  desc "IDE for application development"
  homepage "https://www1.qt.io/developers/"

  livecheck do
    url "https://download.qt.io/development_releases/qtcreator/"
    strategy :page_match do |page|
      versions = page.scan(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i).flatten.uniq.sort_by { |v| Version.new(v) }
      newest_major_minor = versions.last
      next if newest_major_minor.blank?

      # Fetch the directory listing page for the newest version
      version_page = Homebrew::Livecheck::Strategy.page_content(URI.join(@url, "#{newest_major_minor}/").to_s)
      next if version_page[:content].blank?

      version_page[:content].scan(%r{href=["']?v?(\d+(?:\.\d+)+[._-](?:alpha|beta|rc)\d*)/?["' >]}i).map(&:first)
    end
  end

  app "Qt Creator.app"
end
