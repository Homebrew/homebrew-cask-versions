cask "daedalus-flight" do
  version "3.0.0-FC3,15379"
  sha256 "2eaa908b4db92cb9f4cc15d53e6a240e7a0b73fdf24a3cb5b0653b67efaead86"

  # update-cardano-mainnet-flight.iohk.io/ was verified as official when first introduced to the cask
  url "https://update-cardano-mainnet-flight.iohk.io/daedalus-#{version.before_comma}-mainnet_flight-#{version.after_comma}.pkg"
  appcast "https://update-cardano-mainnet-flight.iohk.io/daedalus-latest-version.json"
  name "Daedalus Flight"
  desc "Pre-release of Daedalus cryptocurrency wallet for ada on the Cardano blockchain"
  homepage "https://daedaluswallet.io/en/flight/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "daedalus-#{version.before_comma}-mainnet_flight-#{version.after_comma}.pkg"

  uninstall pkgutil: "org.Daedalusmainnet_flight.pkg"

  zap trash: [
    "~/Library/Application Support/Daedalus Flight",
    "~/Library/Preferences/com.electron.daedalus-flight.plist",
    "~/Library/Saved Application State/com.electron.daedalus-flight.savedState",
  ]
end
