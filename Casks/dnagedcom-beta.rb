cask "dnagedcom-beta" do
  version "3.1.5.3"
  sha256 :no_check

  url "https://www.dnagedcom.com/App3/Beta/DNAGedcomInstaller.pkg"
  name "DNAGedcom"
  desc "Download and analyze DNA matches from testing/comparison websites"
  homepage "https://www.dnagedcom.com/"

  livecheck do
    url "https://genetic.family/setting/QuerySystem?SettingKey=DGCMac3_Beta"
    strategy :page_match do |page|
      JSON.parse(page)["Data"]
    end
  end

  conflicts_with cask: "dnagedcom"

  pkg "DNAGedcomInstaller.pkg"

  uninstall pkgutil: "com.DNAGedcom.pkg.DNAGedcomInstaller"

  zap trash: [
    "~/Library/Preferences/com.dnagedcom.client.plist",
    "~/Library/Caches/com.dnagedcom.client",
    "~/Library/Saved Application State/com.dnagedcom.client.savedState",
  ]
end
