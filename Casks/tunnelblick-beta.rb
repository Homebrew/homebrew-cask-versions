cask "tunnelblick-beta" do
  version "4.0.0beta16,5960"
  sha256 "e8954bd4be89ee13323c23cb2c444fe88beb4f927cc135e867e3dba1a21e710a"

  url "https://github.com/Tunnelblick/Tunnelblick/releases/download/v#{version.csv.first}/Tunnelblick_#{version.csv.first}_build_#{version.csv.second}.dmg",
      verified: "github.com/Tunnelblick/Tunnelblick/"
  name "Tunnelblick"
  desc "Free and open source graphic user interface for OpenVPN"
  homepage "https://www.tunnelblick.net/"

  livecheck do
    url :url
    regex(/^Tunnelblick[._-]v?(\d+(?:\.\d+)+[._-]?beta\d+[a-z]?)[._-]build[._-](\d+)\.(?:dmg|pkg)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          "#{match[1]},#{match[2]}"
        end
      end.flatten
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
