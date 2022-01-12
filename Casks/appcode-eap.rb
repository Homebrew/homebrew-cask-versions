cask "appcode-eap" do
  version "2021.3,213.5744.144"
  sha256 "9f870297b35f0a31c058ff2e5212f09eaaa743eeb86689df4358dc52d294f6e6"

  url "https://download.jetbrains.com/objc/AppCode-#{version.csv.second}.dmg"
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
