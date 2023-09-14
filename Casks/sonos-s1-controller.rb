cask "sonos-s1-controller" do
  version "57.18-44230,rdiahrpn"
  sha256 "3ace7d55daa9a66be88ac49cc494fd14949603c586159947d77fc4fc16486abf"

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
