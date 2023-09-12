cask "xmind-beta" do
  version "23.09.03101,202309031945"
  sha256 "158c85d6018d483495c443d7202e09ffcf8ea3f9f01b32fd74f4a27ff2c3d79c"

  url "https://dl3.xmind.net/Xmind-for-macOS-#{version.csv.first}-beta-#{version.csv.second}.dmg"
  name "XMind"
  desc "Mind mapping and brainstorming tool"
  homepage "https://www.xmind.net/"

  livecheck do
    url "https://xmind.app/desktop-beta/download/mac/"
    regex(/Xmind[._-]for[._-]macOS[._-](\d+(?:\.\d+)+)-beta-(\d*)\.dmg/i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: [
    "homebrew/cask/xmind",
    "xmind8",
  ]

  app "Xmind.app"

  zap trash: [
    "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
    "~/Library/XMind",
  ]
end
