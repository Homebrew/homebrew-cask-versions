cask "omnigraffle6" do
  version "6.6.2"
  sha256 "f0b05a654686c42703cddef646a2519235b45d26bd06988a6e644aa96c0eb828"

  url "https://downloads.omnigroup.com/software/MacOSX/10.10/OmniGraffle-#{version}.dmg"
  name "OmniGraffle 6"
  homepage "https://www.omnigroup.com/omnigraffle/"

  app "OmniGraffle.app"

  zap trash: [
    "~/Library/Application Scripts/com.omnigroup.OmniGraffle6",
    "~/Library/Application Scripts/com.omnigroup.OmniSoftwareUpdate.OSUCheckService",
    "~/Library/Containers/com.omnigroup.OmniGraffle6",
    "~/Library/Containers/com.omnigroup.OmniSoftwareUpdate.OSUCheckService",
    "~/Library/Preferences/com.omnigroup.OmniGraffle6.plist",
    "~/Library/Saved Application State/com.omnigroup.OmniGraffle6.savedState",
  ]
end
