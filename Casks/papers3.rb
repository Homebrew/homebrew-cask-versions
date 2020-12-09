cask "papers3" do
  version "3.4.25_600"
  sha256 "3a67540bcc9c676301567bf8654ae745fb900cd5736a90715f504458de272282"

  url "https://downloads.mekentosj.com/papers_#{version.no_dots}.dmg",
      verified: "downloads.mekentosj.com/"
  name "Papers"
  desc "Your personal library of research"
  homepage "https://support.papersapp.com/support/solutions/articles/30000031865-existing-papers-3-users-accessing-papers-3-program-files-for-additional-device-installs"

  app "Papers.app"

  uninstall login_item: "Citations"

  zap trash: [
    "~/Library/Application Support/Papers#{version.major}",
    "~/Library/Caches/com.mekentosj.Citations",
    "~/Library/Caches/com.mekentosj.papers#{version.major}",
    "~/Library/Preferences/com.mekentosj.Citations.plist",
    "~/Library/Preferences/com.mekentosj.papers#{version.major}",
  ]
end
