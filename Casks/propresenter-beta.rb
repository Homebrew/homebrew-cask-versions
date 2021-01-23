cask "propresenter-beta" do
  version "7.4.1,117702916"
  sha256 "d8d5f35d25967f4284f8627bfd967cac178fe60a0babb7aa94b9d22b40a7221b"

  url "https://renewedvision.com/downloads/propresenter/mac/ProPresenter_#{version.before_comma}_#{version.after_comma}.zip"
  appcast "https://api.renewedvision.com/v1/pro/upgrade?platform=macos&osVersion=0&appVersion=0&buildNumber=0&includeNotes=0&channel=beta"
  name "ProPresenter"
  desc "Presentation and production application for live events"
  homepage "https://www.renewedvision.com/propresenter.php"

  conflicts_with cask: "propresenter"
  depends_on macos: ">= :mojave"

  app "ProPresenter.app"

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
