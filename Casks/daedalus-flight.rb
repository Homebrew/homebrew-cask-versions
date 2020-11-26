cask "daedalus-flight" do
  version "3.0.0-FC2,15337"
  sha256 "7febd8e4e4d77140e1948945fba7d899f5ae3d8a2e83dc9c578b744893be3833"

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
