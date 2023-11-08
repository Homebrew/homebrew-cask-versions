cask "sonos-s1-controller" do
  version "57.19-46310,rozcvdwa"
  sha256 "fab37ffd1c8a818375b476e398d8e46c7455b8c4fbf4c184a34de88ee2dd935e"

  url "https://update-software.sonos.com/software/#{version.csv.second}/Sonos_#{version.csv.first}.dmg"
  name "Sonos S1"
  desc "Controller for Gen 1 Sonos products"
  homepage "https://www.sonos.com/"

  livecheck do
    url "https://www.sonos.com/en/redir/controller_software_mac"
    regex(%r{software/(\w+)/Sonos[._-]v?(\d+(?:.\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  auto_updates true

  app "Sonos S1 Controller.app"

  zap trash: "~/Library/Application Support/Sonos"
end
