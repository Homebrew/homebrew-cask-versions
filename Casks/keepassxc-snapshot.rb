cask "keepassxc-snapshot" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    base_url = "https://snapshot.keepassxc.org/latest/"
    path = URI(base_url)
           .open
           .read
           .scan(/href="([^"]+-snapshot\.dmg)">/)
           .flatten
           .first
    "#{base_url}#{path}"
  end
  name "KeePassXC"
  homepage "https://keepassxc.org/"

  app "KeePassXC.app"
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"

  zap trash: "~/.keepassxc"
end
