cask "zulu11" do
  arch arm: "aarch64", intel: "x64"
  choice = on_arch_conditional arm: "arm", intel: "x86"

  version "11.0.20.1,11.66.19-ca"
  sha256 arm:   "c845c1427747fb50316d06d44bb9ebe98d8a8f68f4a60ed244ad78943816b724",
         intel: "b7182c078f5ae70655952c45b42ce4edda3a7503994ba0f9b0cf6e6b774032a7"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.csv.second}-jdk#{version.csv.first}-macosx_#{arch}.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java Standard Edition Development Kit"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/products/core/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&bundle_type=jdk&javafx=false&ext=dmg&os=macos&arch=#{choice}"
    regex(/zulu(\d+(?:[._]\d+)*-.*?)-jdk(\d+(?:\.\d+)+)-macosx_#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

  zap trash: "~/Library/Saved Application State/com.azul.zulu.#{version.major}*.java.savedState"
end
