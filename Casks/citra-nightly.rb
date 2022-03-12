cask "citra-nightly" do
  version "1757,20220305-ac98458"
  sha256 "cf978b2393b55721f2f53b22e36a7fbe903c3fbd60322ce3bfa05186c42dcc74"

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
    "~/.config/citra-emu",
    "~/.local/share/citra-emu",
    "~/Library/Preferences/com.citra-emu.citra.plist",
    "~/Library/Saved Application State/com.citra-emu.citra.savedState",
  ]
end
