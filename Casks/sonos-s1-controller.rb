cask "sonos-s1-controller" do
  version "11.2.12,57.8.21220"
  sha256 "10e51eaae890a8a3f64efcc60b31c5ba88392e4dc031ae019912045700daac0a"

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.before_comma.no_dots}.dmg"
  name "Sonos S1"
  desc "Controller for Gen 1 Sonos products"
  homepage "https://www.sonos.com/"

  livecheck do
    url "https://www.sonos.com/en/redir/controller_software_mac"
    strategy :extract_plist
  end

  auto_updates true

  app "Sonos S1 Controller.app"

  zap trash: "~/Library/Application Support/Sonos"
end
