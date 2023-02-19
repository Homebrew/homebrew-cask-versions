cask "microsoft-edge-dev" do
  folder = on_arch_conditional arm:   "03adf619-38c6-4249-95ff-4a01c0ffc962",
                               intel: "C1297A47-86C4-4C1F-97FA-950631F94777"
  linkid = on_arch_conditional arm: "2099619", intel: "2069340"

  version "111.0.1660.13"
  sha256 arm:   "550f49972348d9be09fffc958e93b343a6a1ea5a12f0d36ffca28cb8556f2e73",
         intel: "f8e5990fcadd1c9087c208a697e4755629d667296e24c6e08c504f47f2c81b83"

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
