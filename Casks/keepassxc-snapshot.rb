cask "keepassxc-snapshot" do
  version :latest
  sha256 :no_check

  url do
    base_url = "https://snapshot.keepassxc.org/latest/"
    result = curl_output("--fail", "--silent", base_url)
    result.assert_success!
    path = result.stdout[/href="([^"]+-snapshot\.dmg)"/, 1]
    "#{base_url}#{path}"
  end
  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  app "KeePassXC.app"
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"

  zap trash: "~/.keepassxc"
end
