cask "folding-at-home-beta" do
  version "8.1.11"
  sha256 "f6375dea6c03dd9c96c9d901e073fc2f14852866a1cab84bd4af6135283069ae"

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
            pkgutil:   "org.foldingathome.fahclient.*"

  caveats do
    <<~EOS

      Please open the Web Control app https://app.foldingathome.org in a browser other than Safari.

      Safari will not allow unencrypted connections from an https page.

      Install will fail if Safari seems to be your only browser.

    EOS
  end
end
