cask "microsoft-edge-beta" do
  folder = on_arch_conditional arm:   "03adf619-38c6-4249-95ff-4a01c0ffc962",
                               intel: "C1297A47-86C4-4C1F-97FA-950631F94777"
  linkid = on_arch_conditional arm: "2099618", intel: "2069439"

  version "113.0.1774.23"
  sha256 arm:   "2915fa74a34a10881727eebc016f402cd4054a238cef758e9fc49209d0db917f",
         intel: "1bfa430fa925b2a2a0ccfa8edec1d16494cad0a51ca4c454b737105c8d9bd735"

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
