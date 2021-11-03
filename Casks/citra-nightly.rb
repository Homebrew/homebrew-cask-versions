cask "citra-nightly" do
  version "1732,20211101-5a7d801"
  sha256 "0d8424d4fe68054caeb21e93ccd5ddf4e8f70ddcf79d97d5a2ec6636b202ce9b"

  url "https://github.com/citra-emu/citra-nightly/releases/download/nightly-#{version.before_comma}/citra-osx-#{version.after_comma}.tar.gz",
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

  app "citra-osx-#{version.after_comma}/citra-qt.app"

  zap trash: [
    "~/Library/Preferences/com.citra-emu.citra.plist",
    "~/Library/Saved Application State/com.citra-emu.citra.savedState",
    "~/.config/citra-emu",
    "~/.local/share/citra-emu",
  ]
end
