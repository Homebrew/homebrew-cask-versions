cask "sonos-s1-controller" do
  version "57.14-37030"
  sha256 "23bfafa620393fa9c8d8c318962a277b31af2acd4ed95ac6e49e6994914fa1c5"

  url "https://update-software.sonos.com/software/oxmdyztc/Sonos_#{version}.dmg"
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
