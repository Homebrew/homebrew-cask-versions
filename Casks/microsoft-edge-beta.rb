cask "microsoft-edge-beta" do
  folder = Hardware::CPU.intel? ? "C1297A47-86C4-4C1F-97FA-950631F94777" : "03adf619-38c6-4249-95ff-4a01c0ffc962"
  linkid = Hardware::CPU.intel? ? "2069439" : "2099618"

  version "104.0.1293.14"

  if Hardware::CPU.intel?
    sha256 "695a2c6e3b13f6a19a8ddc6e6ce5395cb96921d01911b4f959ec0e0be58d4bd2"
  else
    sha256 "5d43c64b65cb79f4a5649a29137e82500329e1f89a941b6a6098b43c908e6012"
  end

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
