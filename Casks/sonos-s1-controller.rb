cask "sonos-s1-controller" do
  version "11.5,57.12-31030"
  sha256 "d1a2f22dc0a9e4e7563b301698cdf8c5c5ddb54471216ce25ba8c5d225d95859"

  url "https://update-software.sonos.com/software/ukxehnnu/Sonos_#{version.csv.second}.dmg"
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
