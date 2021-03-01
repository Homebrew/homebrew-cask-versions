cask "daedalus-flight" do
  version "4.0.0-FC1,16868"
  sha256 "31c05f59d74f7e5d5345a82e95d61bb5544c72958be01d20e669986eeea5872e"

  url "https://update-cardano-mainnet-flight.iohk.io/daedalus-#{version.before_comma}-mainnet_flight-#{version.after_comma}.pkg",
      verified: "update-cardano-mainnet-flight.iohk.io/"
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
