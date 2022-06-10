cask "daedalus-flight" do
  version "4.11.0,21857"
  sha256 "37a956cee16bede4442754879071d07f400ae8c726a942c68261f88d0117eabe"

  url "https://update-cardano-mainnet-flight.iohk.io/daedalus-#{version.csv.first}-mainnet_flight-#{version.csv.second}.pkg",
      verified: "update-cardano-mainnet-flight.iohk.io/"
  name "Daedalus Flight"
  desc "Pre-release of Daedalus cryptocurrency wallet for ada on the Cardano blockchain"
  homepage "https://daedaluswallet.io/en/flight/"

  livecheck do
    url "https://update-cardano-mainnet-flight.iohk.io/daedalus-latest-version.json"
    regex(%r{/daedalus-(\d+(?:\.\d+)*(?:-FC\d*)?)-mainnet_flight-(\d+)\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "daedalus-#{version.csv.first}-mainnet_flight-#{version.csv.second}.pkg"

  uninstall pkgutil: "org.Daedalusmainnet_flight.pkg"

  zap trash: [
    "~/Library/Application Support/Daedalus Flight",
    "~/Library/Preferences/com.electron.daedalus-flight.plist",
    "~/Library/Saved Application State/com.electron.daedalus-flight.savedState",
  ]
end
