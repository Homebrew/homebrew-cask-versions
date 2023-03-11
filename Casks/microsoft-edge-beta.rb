cask "microsoft-edge-beta" do
  folder = on_arch_conditional arm:   "03adf619-38c6-4249-95ff-4a01c0ffc962",
                               intel: "C1297A47-86C4-4C1F-97FA-950631F94777"
  linkid = on_arch_conditional arm: "2099618", intel: "2069439"

  version "111.0.1661.39"
  sha256 arm:   "720e89cacbcdc463e190c19b746fa2b674c2d110cf1572c67a03a3994e4062b4",
         intel: "84c4149a7b8eaaaed1585be834df6a66c3622d51ff39c29c7d762d5a20b87665"

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

  uninstall pkgutil: "com.microsoft.edgemac.Beta",
            quit:    "com.microsoft.autoupdate2"

  zap trash: [
        "~/Library/Application Support/Microsoft Edge Beta",
        "~/Library/Caches/Microsoft Edge Beta",
        "~/Library/Preferences/com.microsoft.edgemac.Beta.plist",
        "~/Library/Saved Application State/com.microsoft.edgemac.Beta.savedState",
      ],
      rmdir: "/Library/Application Support/Microsoft"
end
