cask "appcode-eap" do
  version "2021.2,212.4746.104"
  sha256 "c976a751cfcc04e8fb32fc591b01b8db9960d2666056e32f3fd5271b983838e4"

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
