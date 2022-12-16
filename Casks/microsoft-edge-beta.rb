cask "microsoft-edge-beta" do
  folder = on_arch_conditional arm:   "03adf619-38c6-4249-95ff-4a01c0ffc962",
                               intel: "C1297A47-86C4-4C1F-97FA-950631F94777"
  linkid = on_arch_conditional arm: "2099618", intel: "2069439"

  version "109.0.1518.23"
  sha256 arm:   "eef38b094f063608adebe88657ca3e650cf5fdf7ccee7f652ce704f7ab5db026",
         intel: "b616715c55b3808cb10d9c4f07b6816b86724f7da49f05e74ba57ad587b2017d"

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
