cask "daedalus-flight" do
  version "4.5.2,19820"
  sha256 "a61111fff79ef668bff06e91f03aeebdfb9f803d0681e39537d567348a2bdd6f"

  url "https://update-cardano-mainnet-flight.iohk.io/daedalus-#{version.before_comma}-mainnet_flight-#{version.after_comma}.pkg",
      verified: "update-cardano-mainnet-flight.iohk.io/"
  name "Daedalus Flight"
  desc "Pre-release of Daedalus cryptocurrency wallet for ada on the Cardano blockchain"
  homepage "https://daedaluswallet.io/en/flight/"

  livecheck do
    url "https://update-cardano-mainnet-flight.iohk.io/daedalus-latest-version.json"
    strategy :page_match do |page|
      match = page.match(%r{/daedalus-(\d+(?:\.\d+)*(?:-FC\d*)?)-mainnet_flight-(\d+)\.pkg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

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
