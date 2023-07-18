cask "zulu11" do
  arch arm: "aarch64", intel: "x64"
  choice = on_arch_conditional arm: "arm", intel: "x86"

  version "11.0.20,11.66.15-ca"
  sha256 arm:   "8bf03fce77655e6f96e9c6694ddcf9c41301178a82eefe7c7476c92061d297e4",
         intel: "c9f010d6540e4cb7ca1b227b15a46d1cb309efd707b196d9e7d1d7dd34bbd991"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.csv.second}-jdk#{version.csv.first}-macosx_#{arch}.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java Standard Edition Development Kit"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/products/core/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&bundle_type=jdk&javafx=false&ext=dmg&os=macos&arch=#{choice}"
    regex(/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)+)-macosx_#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

  zap trash: "~/Library/Saved Application State/com.azul.zulu.#{version.major}*.java.savedState"
end
