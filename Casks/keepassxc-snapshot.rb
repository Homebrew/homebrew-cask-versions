cask "keepassxc-snapshot" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    base_url = "https://snapshot.keepassxc.org/latest/"
    path = URI(base_url).read[/href="([^"]+-snapshot\.dmg)"/, 1]
    "#{base_url}#{path}"
  end
  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  app "KeePassXC.app"
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"

  zap trash: "~/.keepassxc"
end
