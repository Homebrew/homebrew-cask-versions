cask "appcode-eap" do
  version "2021.1,211.6693.28"
  sha256 "682951e03bea0c8135edf4dcea9cdf1be3e39c9282d4baa34dcd5e288bc3a3ec"

  url "https://download.jetbrains.com/objc/AppCode-#{version.after_comma}.dmg"
  name "AppCode EAP"
  homepage "https://www.jetbrains.com/objc/nextversion/"

  livecheck do
    skip "No version information available"
  end

  conflicts_with cask: "appcode"

  app "AppCode #{version.before_comma} EAP.app"

  zap delete: [
    "~/Library/Preferences/AppCode#{version.before_comma}",
    "~/Library/Application Support/AppCode#{version.before_comma}",
    "~/Library/Caches/AppCode#{version.before_comma}",
    "~/Library/Logs/AppCode#{version.before_comma}",
  ]
end
