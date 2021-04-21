cask "dolphin-dev" do
  version "5.0-14030,2e:9e"
  sha256 "556d7a4f2f21b9291b93ecd2dd28fc7e9d3df69b7aac1df14446c4209894561e"

  url "https://dl.dolphin-emu.org/builds/#{version.after_comma.before_colon}/#{version.after_colon}/dolphin-master-#{version.before_comma}.dmg"
  name "dolphin-dev"
  desc "Emulator to play GameCube and Wii games"
  homepage "https://dolphin-emu.org/"

  livecheck do
    url "https://dolphin-emu.org/download/list/master/1/"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/([0-9a-f]+)/([0-9a-f]+)/dolphin-master-(\d+(?:\.\d+)*-\d+)\.dmg}i)
      "#{match[3]},#{match[1]}:#{match[2]}"
    end
  end

  auto_updates true
  conflicts_with cask: "dolphin"

  app "Dolphin.app"
  app "Dolphin Updater.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
  ]
end
