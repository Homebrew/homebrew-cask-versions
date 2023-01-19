cask "microsoft-edge-dev" do
  folder = on_arch_conditional arm:   "03adf619-38c6-4249-95ff-4a01c0ffc962",
                               intel: "C1297A47-86C4-4C1F-97FA-950631F94777"
  linkid = on_arch_conditional arm: "2099619", intel: "2069340"

  version "110.0.1587.15"
  sha256 arm:   "71079408ddf7e5f715681ef670073769a3daaa9f81e314f75d7be9d223a4aacc",
         intel: "37677a95e1d7625902ad2413dca94ab9faaaa359cfdf2dc27be91377ca086372"

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

  uninstall pkgutil: "com.microsoft.edgemac.Dev"

  zap trash: [
        "~/Library/Application Support/Microsoft Edge Dev",
        "~/Library/Caches/Microsoft Edge Dev",
        "~/Library/Preferences/com.microsoft.edgemac.Dev.plist",
        "~/Library/Saved Application State/com.microsoft.edgemac.Dev.savedState",
      ],
      rmdir: "/Library/Application Support/Microsoft"
end
