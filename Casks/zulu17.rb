cask "zulu17" do
  arch arm: "aarch64", intel: "x64"
  choice = on_arch_conditional arm: "arm", intel: "x86"

  version "17.0.4,17.36.13-ca"
  sha256 arm:   "7a945596e479b2e3aeb40a89d05fd54652ba9c96d69b8dddae7656c7e171eb47",
         intel: "3a3143b0f89ad5b07b44fa81078f38ef181d6f4e03649ab04360a261be64284a"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.csv.second}-jdk#{version.csv.first}-macosx_#{arch}.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java Standard Edition Development Kit"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/downloads/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&bundle_type=jdk&javafx=false&ext=dmg&os=macos&arch=#{choice}"
    regex(/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)*)-macosx_#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :mojave"

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
