cask "citra-nightly" do
  version "1739,20220105-60d1def"
  sha256 "938ebedd9da286e96dc68192d42b1e81d8363bcd3de2d47a66382026c985866e"

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
