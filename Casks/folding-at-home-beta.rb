cask "folding-at-home-beta" do
  version "8.1.14"
  sha256 "88e4a857b928962d3678c23b4ee4fe54d4c88f7bff393a5936f7a84703e83c4e"

  url "https://download.foldingathome.org/releases/beta/fah-client/macos-12-universal/release/fah-client_#{version}_universal.pkg"
  name "Folding@home Client Beta"
  desc "Protein folding simulation for scientific research"
  homepage "https://foldingathome.org/"

  livecheck do
    url "https://download.foldingathome.org/releases/beta/fah-client/macos-12-universal/release/"
    regex(/href=.*?fah[._-]?client[._-]v?(\d+(?:\.\d+)*)(_universal)?\.pkg/i)
  end

  conflicts_with cask: "folding-at-home"
  depends_on macos: ">= :high_sierra"

  pkg "fah-client_#{version}_universal.pkg"

  uninstall launchctl: "org.foldingathome.fahclient",
            pkgutil:   "org.foldingathome.fahclient.pkg"

  zap trash: "/Library/Application Support/FAHClient"
end
