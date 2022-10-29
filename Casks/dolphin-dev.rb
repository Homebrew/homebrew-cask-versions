cask "dolphin-dev" do
  version "5.0-17758,74,d1"
  sha256 "0885833fb7cae82d9e75c9354882560ad1509af775570a006e8bdff75d3a7dcb"

  url "https://dl.dolphin-emu.org/builds/#{version.csv.second}/#{version.csv.third}/dolphin-master-#{version.csv.first}-universal.dmg"
  name "Dolphin Dev"
  desc "Emulator to play GameCube and Wii games"
  homepage "https://dolphin-emu.org/"

  livecheck do
    url "https://dolphin-emu.org/download/list/master/"
    regex(%r{href=.*?builds/([a-f0-9]+)/([a-f0-9]+)/dolphin-master-(\d+(?:\.\d+)+-\d+)[._-]universal\.dmg}i)
    strategy :page_match do |page|
      match = page.match(regex)
      next if match.blank?

      "#{match[3]},#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: "dolphin"

  app "Dolphin.app"
  app "Dolphin Updater.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
  ]
end
