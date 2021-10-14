cask "appcode-eap" do
  version "2021.3,213.4928.10"
  sha256 "4b208621b2bc81112384389e96a4431c6cd29482a94158b55388956294a48e89"

  url "https://download.jetbrains.com/objc/AppCode-#{version.after_comma}.dmg"
  name "AppCode EAP"
  desc "IDE for Swift, Objective-C, C, and C++ development"
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
