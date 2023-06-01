cask "sonos-s1-controller" do
  version "57.16-41110"
  sha256 "c1cd7a6e2573e0d046517336f02404befc505567f4ed22f388a0026ecae11b68"

  url "https://update-software.sonos.com/software/wzhipjet/Sonos_#{version}.dmg"
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
