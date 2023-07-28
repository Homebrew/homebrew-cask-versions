cask "sonos-s1-controller" do
  version "57.17-43140,jqeqdtdi"
  sha256 "071cbb3692ac5bad7547798a8e4c0680f84de1f39c05bcb409bcac404f91a90a"

  url "https://update-software.sonos.com/software/#{version.csv.second}/Sonos_#{version.csv.first}.dmg"
  name "Sonos S1"
  desc "Controller for Gen 1 Sonos products"
  homepage "https://www.sonos.com/"

  livecheck do
    url "https://www.sonos.com/en/redir/controller_software_mac"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{software/(\w+)/Sonos[._-]v?(\d+(?:.\d+)+)\.dmg}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true

  app "Sonos S1 Controller.app"

  zap trash: "~/Library/Application Support/Sonos"
end
