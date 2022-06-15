cask "citra-nightly" do
  version "1770,20220611-88a4759"
  sha256 "3130f04fa892eb922fb5835ffa48d4479db1b27ce08ba0ee5104ba3bacfa5bf7"

  url "https://github.com/citra-emu/citra-nightly/releases/download/nightly-#{version.csv.first}/citra-osx-#{version.csv.second}.tar.gz",
      verified: "github.com/citra-emu/citra-nightly/"
  name "Citra"
  desc "Nintendo 3DS emulator"
  homepage "https://citra-emu.org/"

  livecheck do
    url :url
    regex(%r{href=.*?/nightly[._-](\d+)/citra[._-]osx[._-](\d+[._-]\h+)\.t}i)
    strategy :github_latest do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "citra-osx-#{version.csv.second}/citra-qt.app"

  zap trash: [
    "~/.config/citra-emu",
    "~/.local/share/citra-emu",
    "~/Library/Preferences/com.citra-emu.citra.plist",
    "~/Library/Saved Application State/com.citra-emu.citra.savedState",
  ]
end
