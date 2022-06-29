cask "sonos-s1-controller" do
  version "11.4,57.11.28060"
  sha256 "4ad48ed5d7cb56596a228eeb6e7fc11cb35943c6dcb0cb1b0a7470c21b2192d2"

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.csv.first.no_dots}.dmg"
  name "Sonos S1"
  desc "Controller for Gen 1 Sonos products"
  homepage "https://www.sonos.com/"

  livecheck do
    url "https://www.sonos.com/en/redir/controller_software_mac"
    regex(/SonosDesktopController[._-]?v?(\d+(?:\.\d+)*)/i)
    strategy :header_match do |headers|
      version = headers["location"][regex, 1]
      next if version.blank?

      cask = CaskLoader.load("sonos-s1-controller")
      download_url = "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version}.dmg"
      build = Homebrew::Livecheck::Strategy::ExtractPlist.find_versions(cask: cask,
                                                                        url:  download_url)[:matches].values.first
      next if build.blank?

      formatted_version = version.include?(".") ? version : version.sub(/(\d\d)(\d+)/, '\1.\2')

      "#{formatted_version},#{build}"
    end
  end

  auto_updates true

  app "Sonos S1 Controller.app"

  zap trash: "~/Library/Application Support/Sonos"
end
