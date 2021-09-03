cask "tunnelblick-beta" do
  version "3.8.7beta02,5730"
  sha256 "f5d38cb9608fac0f60df777f3dcfcfc4a33a6a4df04a48d3bef6713160356d5b"

  url "https://github.com/Tunnelblick/Tunnelblick/releases/download/v#{version.before_comma}/Tunnelblick_#{version.before_comma}_build_#{version.after_comma}.dmg",
      verified: "github.com/Tunnelblick/Tunnelblick/"
  name "Tunnelblick"
  desc "Free and open source graphic user interface for OpenVPN"
  homepage "https://www.tunnelblick.net/"

  livecheck do
    url "https://github.com/Tunnelblick/Tunnelblick/releases"
    regex(%r{href=.*?/Tunnelblick_(\d+(?:\.\d+)*beta(?:\d+))_build_(\d+)\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  app "Tunnelblick.app"

  uninstall_preflight do
    set_ownership "#{appdir}/Tunnelblick.app"
  end

  uninstall launchctl: [
    "net.tunnelblick.tunnelblick.LaunchAtLogin",
    "net.tunnelblick.tunnelblick.tunnelblickd",
  ],
            quit:      "net.tunnelblick.tunnelblick"

  zap trash: [
    "/Library/Application Support/Tunnelblick",
    "~/Library/Application Support/Tunnelblick",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/net.tunnelblick.tunnelblick.help*",
    "~/Library/Caches/net.tunnelblick.tunnelblick",
    "~/Library/Preferences/net.tunnelblick.tunnelblick.plist",
  ]

  caveats <<~EOS
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end
