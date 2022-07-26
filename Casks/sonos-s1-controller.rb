cask "sonos-s1-controller" do
  version "57.12-31030"
  sha256 "d1a2f22dc0a9e4e7563b301698cdf8c5c5ddb54471216ce25ba8c5d225d95859"

  url "https://update-software.sonos.com/software/ukxehnnu/Sonos_#{version}.dmg"
  name "Sonos S1"
  desc "Controller for Gen 1 Sonos products"
  homepage "https://www.sonos.com/"

  livecheck do
    url "https://www.sonos.com/en/redir/controller_software_mac"
    strategy :header_match
  end

  auto_updates true

  app "Sonos S1 Controller.app"

  zap trash: "~/Library/Application Support/Sonos"
end
