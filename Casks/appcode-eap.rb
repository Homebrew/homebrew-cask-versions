cask "appcode-eap" do
  version "2020.3,203.4818.45"
  sha256 "67f46dab6a2aafd66e23651c78c137a55f11084eb17198e9b35bda6276a442a6"

  url "https://download.jetbrains.com/objc/AppCode-#{version.after_comma}.dmg"
  name "AppCode EAP"
  homepage "https://www.jetbrains.com/objc/nextversion/"

  conflicts_with cask: "appcode"

  app "AppCode #{version.before_comma} EAP.app"

  zap delete: [
    "~/Library/Preferences/AppCode#{version.before_comma}",
    "~/Library/Application Support/AppCode#{version.before_comma}",
    "~/Library/Caches/AppCode#{version.before_comma}",
    "~/Library/Logs/AppCode#{version.before_comma}",
  ]
end
