cask "qt-creator-dev" do
  version "13.0.0-beta2"
  sha256 "c31c7266af4a8c106914c73284c9a2dfa2b8f3373cf9dc925e8c3cec9441dd4f"

  url "https://download.qt.io/development_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name "Qt Creator Dev"
  desc "IDE for application development"
  homepage "https://www1.qt.io/developers/"

  livecheck do
    url "https://download.qt.io/development_releases/qtcreator/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+[._-](?:alpha|beta|rc)\d*)/?["' >]}i)
    strategy :page_match do |page, regex|
      versions = page.scan(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i).flatten.uniq.sort_by { |v| Version.new(v) }
      newest_major_minor = versions.last
      next if newest_major_minor.blank?

      # Fetch the directory listing page for the newest version
      version_page = Homebrew::Livecheck::Strategy.page_content(URI.join(@url, "#{newest_major_minor}/").to_s)
      next if version_page[:content].blank?

      version_page[:content].scan(regex).map(&:first)
    end
  end

  depends_on macos: ">= :catalina"

  app "Qt Creator.app"

  zap trash: [
    "~/Library/Preferences/com.qtproject.QtCreator.plist",
    "~/Library/Preferences/org.qt-project.qtcreator.plist",
    "~/Library/Saved Application State/org.qt-project.qtcreator.savedState",
  ]
end
