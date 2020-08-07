cask "microsoft-edge-dev" do
  version "86.0.594.1"
  sha256 "ba42f4dd57e7d7fc0db6cc57f5e012344a9eb3005af86313fc0ee14beebad81f"

  # officecdn-microsoft-com.akamaized.net/ was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdgeDev-#{version}.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://go.microsoft.com/fwlink/?linkid=2069340"
  name "Microsoft Edge Dev"
  homepage "https://www.microsoftedgeinsider.com/"

  auto_updates true

  pkg "MicrosoftEdgeDev-#{version}.pkg"

  uninstall pkgutil: "com.microsoft.edgemac.Dev",
            rmdir:   "/Library/Application Support/Microsoft"

  zap launchctl: [
    "com.microsoft.autoupdate.helper",
    "com.microsoft.update.agent",
  ],
      pkgutil:   "com.microsoft.package.Microsoft_AutoUpdate.app",
      delete:    "/Library/PrivilegedHelperTools/com.microsoft.autoupdate.helper",
      trash:     [
        "~/Library/Preferences/com.microsoft.edgemac.Dev.plist",
        "/Library/Application Support/Microsoft",
        "~/Library/Application Support/Microsoft Edge Dev",
      ]
end
