cask "citra-nightly" do
  version "1740,20220108-2670b95"
  sha256 "efdbc1710a90b0d32901f71b2d175efae561db0c68d3845c32cd8384db127f35"

  url "https://github.com/citra-emu/citra-nightly/releases/download/nightly-#{version.csv.first}/citra-osx-#{version.csv.second}.tar.gz",
      verified: "github.com/citra-emu/citra-nightly/"
  name "Citra"
  desc "Nintendo 3DS emulator"
  homepage "https://citra-emu.org/"

  livecheck do
    url :url
    strategy :github_latest do |page|
      match = page.match(%r{href=.*?/nightly[._-](\d+)/citra[._-]osx[._-](\d+[._-]\h+)\.tar\.gz}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "citra-osx-#{version.csv.second}/citra-qt.app"

  zap trash: [
    "~/Library/Preferences/com.citra-emu.citra.plist",
    "~/Library/Saved Application State/com.citra-emu.citra.savedState",
    "~/.config/citra-emu",
    "~/.local/share/citra-emu",
  ]
end
