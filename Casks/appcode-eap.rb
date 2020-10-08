cask "appcode-eap" do
  version "2020.3,203.4449.16"
  sha256 "658e4e27cfd04c48f7eaeff758329c68059f2a585d1d0f079bea5522cf7a62b2"

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
