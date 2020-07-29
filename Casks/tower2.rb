cask "tower2" do
  version "2.6.7-362,b679e775"
  sha256 "40cf4bbc5712c7b97d2da0e3b6558dfed8f1e85cd3b524141a2a1012183f0e9b"

  # fournova-app-updates.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower#{version.major}-mac/#{version.split("-").last.tr(",", "-")}/Tower-#{version.major}-#{version.before_comma}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/stable"
  name "Tower"
  homepage "https://www.git-tower.com/"

  app "Tower.app"
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap trash: [
    "~/Library/Application Support/com.fournova.Tower#{version.major}",
    "~/Library/Caches/com.fournova.Tower#{version.major}",
    "~/Library/Preferences/com.fournova.Tower#{version.major}.plist",
  ]
end
