cask "microsoft-edge-beta" do
  version "93.0.961.11"

  if Hardware::CPU.intel?
    sha256 "e8525b1c2d0f47ffd0aa14db47fd0cbadb1ea492420d9fd4c4742d59f784575f"

    url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdgeBeta-#{version}.pkg",
        verified: "officecdn-microsoft-com.akamaized.net/"
  else
    sha256 "fccbe534230e71197c7e356d8017bc695b75bb10b3eff3199eb1122d5cca0796"

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
