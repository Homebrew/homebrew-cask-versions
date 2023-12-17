cask "zulu13" do
  arch arm: "aarch64", intel: "x64"

  version "13.0.14,13.54.17-ca"
  sha256 arm:   "b7b41f43f6a76f84d579e1d7b4abfd536928b6472e0ca3a8188f474235137b8e",
         intel: "e83a0fb55f3d736c88d9fff33ee6c4a11901507a932477df15bed220c84714c4"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.csv.second}-jdk#{version.csv.first}-macosx_#{arch}.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java Standard Edition Development Kit"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/products/core/"

  deprecate! date: "2023-12-17", because: :discontinued

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

  zap trash: "~/Library/Saved Application State/com.azul.zulu.#{version.major}*.java.savedState"
end
