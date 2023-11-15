cask "microsoft-edge-beta" do
  folder = on_arch_conditional arm:   "03adf619-38c6-4249-95ff-4a01c0ffc962",
                               intel: "C1297A47-86C4-4C1F-97FA-950631F94777"
  linkid = on_arch_conditional arm: "2099618", intel: "2069439"

  version "120.0.2210.8"
  sha256 arm:   "9c2e62d496f5014a5af046016dde1eaa9bacc8e386f34e1e88f1b611d1fa7b69",
         intel: "65b56e8f33698e4d2ac8b8ee6ad582b492bd8fc6a20471730693156aa8146c3f"

  url "https://officecdn-microsoft-com.akamaized.net/pr/#{folder}/MacAutoupdate/MicrosoftEdgeBeta-#{version}.pkg",
      verified: "officecdn-microsoft-com.akamaized.net/"
  name "Microsoft Edge Beta"
  desc "Multi-platform web browser"
  homepage "https://www.microsoftedgeinsider.com/"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=#{linkid}"
    strategy :header_match
  end

  auto_updates true
  depends_on cask: "microsoft-auto-update"

  pkg "MicrosoftEdgeBeta-#{version}.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.package.Microsoft_AutoUpdate.app", # Office16_all_autoupdate.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall launchctl: [
              "application.chainapp.*",
              "com.microsoft.EdgeUpdater.update-internal.109.0.1518.89.system",
              "com.microsoft.EdgeUpdater.update.system",
              "com.microsoft.EdgeUpdater.wake.109.0.1518.89.system",
            ],
            pkgutil:   [
              "com.microsoft.edgemac.Beta",
              "com.microsoft.package.Microsoft_AutoUpdate.app",
            ],
            quit:      "com.microsoft.autoupdate2"

  zap trash: [
    "~/Library/Application Support/Microsoft Edge Beta",
    "~/Library/Caches/Microsoft Edge Beta",
    "~/Library/Preferences/com.microsoft.edgemac.Beta.plist",
    "~/Library/Saved Application State/com.microsoft.edgemac.Beta.savedState",
  ]
end
