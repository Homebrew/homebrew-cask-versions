cask "appcode-eap" do
  version "2021.3,213.5605.78"
  sha256 "856f6dec605912b852ab8fe3fa54954832fd8e0d64f458a4d6cc29827ee8e11d"

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
