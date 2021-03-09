cask "propresenter-beta" do
  version "7.4.2,117703173"
  sha256 "cc7a2a8d481d7a84cdf64a5b49ed5f2ac4a08419726e2d6f02f440feae3b6747"

  url "https://renewedvision.com/downloads/propresenter/mac/ProPresenter_#{version.before_comma}_#{version.after_comma}.zip"
  appcast "https://api.renewedvision.com/v1/pro/upgrade?platform=macos&osVersion=0&appVersion=0&buildNumber=0&includeNotes=0&channel=beta"
  name "ProPresenter"
  desc "Presentation and production application for live events"
  homepage "https://www.renewedvision.com/propresenter.php"

  auto_updates true
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
