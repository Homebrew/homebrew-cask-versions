cask "daedalus-flight" do
  version "2.4.0,14924"
  sha256 "a6112d60c91246dddbeb6dc201b916c541311cc333f17e977dc8a70737ff0888"

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
