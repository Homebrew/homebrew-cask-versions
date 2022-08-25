cask "citra-nightly" do
  version "1781,20220823-141471e"
  sha256 "2bc3fa2746bf714d377540522db420a0fcc681f5ad3b49daa3e0d2dac5ebc781"

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
