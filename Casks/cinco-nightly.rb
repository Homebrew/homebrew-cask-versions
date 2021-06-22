cask "cinco-nightly" do
  version :latest
  sha256 :no_check

  url "https://ls5download.cs.tu-dortmund.de/cinco/nightly/cinco-latest-macos.dmg",
      verified: "ls5download.cs.tu-dortmund.de/cinco/nightly/cinco-latest-macos.dmg"
  name "Cinco Nightly"
  desc "Generator-driven Eclipse IDE for domain-specific graphical modeling tools"
  homepage "https://cinco.scce.info/"

  pkg "Install Cinco Nightly.pkg"

  uninstall quit:    "de.jabc.cinco.meta.product.product",
            pkgutil: "de.jabc.cinco.meta.product.product.cinco-nightly.pkg.component",
            trash:   "/Applications/Cinco Nightly.app"

  zap trash: [
    "~/Library/Preferences/de.jabc.cinco.meta.product.product.plist",
    "~/Library/Saved Application State/de.jabc.cinco.meta.product.product.savedState",
  ]

  caveats do
    license "https://www.eclipse.org/legal/epl-v10.html"
    depends_on_java "11"
  end
end
