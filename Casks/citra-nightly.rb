cask "citra-nightly" do
  version "1723,20210906-4817b00"
  sha256 "d34109c6772470fe986dd677790697d0e4e15c7b8533b3e0052fff1283d4bc92"

  url "https://github.com/citra-emu/citra-nightly/releases/download/nightly-#{version.before_comma}/citra-osx-#{version.after_comma}.tar.gz",
      verified: "github.com/citra-emu/citra-nightly/"
  name "Citra"
  desc "Nintendo 3DS emulator"
  homepage "https://citra-emu.org/"

  livecheck do
    url :url
    strategy :github_latest do |page|
      match = page.match(%r{href=.*?/nightly[._-](\d+)/citra[._-]osx[._-](\d+[._-]\h+)\.tar\.gz}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "citra-osx-#{version.after_comma}/citra-qt.app"

  zap trash: [
    "~/Library/Preferences/com.citra-emu.citra.plist",
    "~/Library/Saved Application State/com.citra-emu.citra.savedState",
    "~/.config/citra-emu",
    "~/.local/share/citra-emu",
  ]
end
