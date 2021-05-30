cask "citra-nightly" do
  version "1708,20210513-e7671d9"
  sha256 "3d169e18e40e374d71d76ecfa0c7b856159787e1bed5e23ba252c1e676a925b5"

  url "https://github.com/citra-emu/citra-nightly/releases/download/nightly-#{version.before_comma}/citra-osx-#{version.after_comma}.tar.gz",
      verified: "github.com/citra-emu/citra-nightly/"
  name "Citra"
  desc "Nintendo 3DS emulator"
  homepage "https://citra-emu.org/"

  app "citra-osx-#{version.after_comma}/citra-qt.app"

  zap trash: [
    "~/Library/Preferences/com.citra-emu.citra.plist",
    "~/Library/Saved Application State/com.citra-emu.citra.savedState",
    "~/.config/citra-emu",
    "~/.local/share/citra-emu",
  ]
end
