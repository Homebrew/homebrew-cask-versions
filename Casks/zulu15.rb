cask "zulu15" do
  arch arm: "aarch64", intel: "x64"

  version "15.0.10,15.46.17-ca"
  sha256 arm:   "f5d123cd149f245792d0d807086f4c58c493bd52db8162ed2d2609f97e493ac1",
         intel: "9e8a2b162826af9ac9db248e4c9e7a8983bbe31ae63686a19a3c291770f9427c"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.csv.second}-jdk#{version.csv.first}-macosx_#{arch}.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java Standard Edition Development Kit"
  desc "Zulu OpenJDK 15"
  homepage "https://www.azul.com/products/core/"

  depends_on macos: ">= :sierra"

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

  zap trash: "~/Library/Saved Application State/com.azul.zulu.#{version.major}*.java.savedState"

  caveats do
    discontinued
  end
end
