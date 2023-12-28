cask "xmind-beta" do
  version "24.03.04745,202312271818"
  sha256 "174137137de58b3ef542d8bcd8dd65b4211ddb59b7510f128a0468f12a7d0e57"

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
