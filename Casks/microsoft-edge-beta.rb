cask "microsoft-edge-beta" do
  version "95.0.1020.9"

  if Hardware::CPU.intel?
    sha256 "dc759ee1bdcf2e8b21e1089209f37adf14e48d2ab2402079c5fc09fdfca312d4"

    url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdgeBeta-#{version}.pkg",
        verified: "officecdn-microsoft-com.akamaized.net/"
  else
    sha256 "c9dbf96ec7254c85f5430da67ff49ca1e48ae2423811a9930da966540097e9a7"

    url "https://officecdn-microsoft-com.akamaized.net/pr/03adf619-38c6-4249-95ff-4a01c0ffc962/MacAutoupdate/MicrosoftEdgeBeta-#{version}.pkg",
        verified: "officecdn-microsoft-com.akamaized.net/"
  end

  name "Microsoft Edge Beta"
  desc "Multi-platform web browser"
  homepage "https://www.microsoftedgeinsider.com/"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=2069439"
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

  uninstall pkgutil: "com.microsoft.edgemac.Beta"

  zap trash: [
    "~/Library/Application Support/Microsoft Edge Beta",
    "~/Library/Caches/Microsoft Edge Beta",
    "~/Library/Preferences/com.microsoft.edgemac.Beta.plist",
    "~/Library/Saved Application State/com.microsoft.edgemac.Beta.savedState",
  ],
      rmdir: "/Library/Application Support/Microsoft"
end
