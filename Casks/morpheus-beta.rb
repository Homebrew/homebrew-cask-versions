cask "morpheus-beta" do
  version "2.2.0_beta3"
  sha256 "20ba4b5860d02dbdf703f15c9d7828162f8a9d5eba50480f0ac04fde9be7a1c3"

  # imc.zih.tu-dresden.de/morpheus/ was verified as official when first introduced to the cask
  url "https://imc.zih.tu-dresden.de/morpheus/packages/mac/Morpheus-#{version}.dmg"
  appcast "https://morpheus.gitlab.io/download/"
  name "Morpheus"
  desc "Modelling environment for multi-cellular systems biology"
  homepage "https://morpheus.gitlab.io/"

  conflicts_with cask: "morpheus"

  app "Morpheus.app"

  zap trash: [
    "~/Library/Application Support/Morpheus",
    "~/Library/Preferences/org.morpheus.Morpheus.plist",
  ]
end
