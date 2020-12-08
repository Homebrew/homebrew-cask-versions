cask "propresenter6" do
  version "6.5.3_100991749"
  sha256 "8a822ae5dbf1f4a17008cee66dcf98487b424a3ef01a381de9310eb9bd6ce530"

  url "https://renewedvision.com/downloads/ProPresenter%20#{version.major}_#{version}.dmg"
  name "ProPresenter 6"
  desc "Presentation and production application for live events"
  homepage "https://www.renewedvision.com/propresenter.php"

  depends_on macos: ">= :high_sierra"

  app "ProPresenter #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/RenewedVision/ProPresenter#{version.major}",
    "~/Library/Caches/KSCrashReports/ProPresenter #{version.major}",
    "~/Library/Caches/Sessions/ProPresenter #{version.major}",
    "~/Library/Caches/com.renewedvision.ProPresenter#{version.major}",
    "~/Library/Preferences/com.renewedvision.ProPresenter#{version.major}.plist",
    "/Library/Application Support/RenewedVision",
    "/Library/Caches/com.renewedvision.ProPresenter#{version.major}",
    "/Users/Shared/Renewed Vision Media",
  ],
      rmdir: [
        "~/Library/Application Support/RenewedVision",
        "~/Library/Caches/KSCrashReports",
        "~/Library/Caches/Sessions",
      ]
end
