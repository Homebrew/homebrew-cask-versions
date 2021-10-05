cask "microsoft-edge-dev" do
  version "96.0.1032.0"

  if Hardware::CPU.intel?
    sha256 "f5dcb0bdb9425cbd2889499c2d35e7f41e1295b6f6684cf883bb7c6011cd2443"

    url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdgeDev-#{version}.pkg",
        verified: "officecdn-microsoft-com.akamaized.net/"
  else
    sha256 "277c0f69ec369a29ec567a4e2d466f30203e82e8feb2eeb1143df9822629b7a6"

    url "https://officecdn-microsoft-com.akamaized.net/pr/03adf619-38c6-4249-95ff-4a01c0ffc962/MacAutoupdate/MicrosoftEdgeDev-#{version}.pkg",
        verified: "officecdn-microsoft-com.akamaized.net/"
  end

  name "Microsoft Edge Dev"
  desc "Multi-platform web browser"
  homepage "https://www.microsoftedgeinsider.com/"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=2069340"
    strategy :header_match
  end

  auto_updates true
  depends_on cask: "microsoft-auto-update"

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
