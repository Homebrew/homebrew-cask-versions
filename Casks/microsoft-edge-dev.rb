cask "microsoft-edge-dev" do
  folder = on_arch_conditional arm:   "03adf619-38c6-4249-95ff-4a01c0ffc962",
                               intel: "C1297A47-86C4-4C1F-97FA-950631F94777"
  linkid = on_arch_conditional arm: "2099619", intel: "2069340"

  version "119.0.2116.0"
  sha256 arm:   "d9695364fb841b799fae96e49d41f50a7ad01ba4b4518706f0030a36a32a9b0d",
         intel: "e8aa36181c42f384770984215a4d2290d38fb7a04df9996d0c06d10d34c9f293"

  url "https://officecdn-microsoft-com.akamaized.net/pr/#{folder}/MacAutoupdate/MicrosoftEdgeDev-#{version}.pkg",
      verified: "officecdn-microsoft-com.akamaized.net/"
  name "Microsoft Edge Dev"
  desc "Multi-platform web browser"
  homepage "https://www.microsoftedgeinsider.com/"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=#{linkid}"
    strategy :header_match
  end

  auto_updates true

  pkg "MicrosoftEdgeDev-#{version}.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.package.Microsoft_AutoUpdate.app", # Office16_all_autoupdate.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall launchctl: [
              "com.microsoft.EdgeUpdater.update-internal.109.0.1518.89.system",
              "com.microsoft.EdgeUpdater.update.system",
              "com.microsoft.EdgeUpdater.wake.109.0.1518.89.system",
            ],
            pkgutil:   "com.microsoft.edgemac.Dev"

  zap trash: [
    "~/Library/Application Support/Microsoft Edge Dev",
    "~/Library/Caches/Microsoft Edge Dev",
    "~/Library/Preferences/com.microsoft.edgemac.Dev.plist",
    "~/Library/Saved Application State/com.microsoft.edgemac.Dev.savedState",
  ]
end
