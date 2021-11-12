cask "sonos-s1-controller" do
  version "11.2.13,57.9.23010"
  sha256 "9cdb5a758be05923d6f8ee500bb30284d1ce5223ffc3702420e9e89af4066e48"

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
