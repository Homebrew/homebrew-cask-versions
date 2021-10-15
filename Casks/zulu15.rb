cask "zulu15" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"
  livecheckarch = Hardware::CPU.intel? ? "x64" : "arm"

  version "15.0.4,15.34.17-ca"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_#{arch}.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  if Hardware::CPU.intel?
    sha256 "d19f580d9197626dab0b242e9f4a4c1b88a3a9d55d18ac97474f73744c34bd79"
  else
    sha256 "0ce1eb4c2013da40bafe79becda9a3d9d994a3eab9ce4010f5f9270f71a16a81"
  end

  name "Azul Zulu Java Standard Edition Development Kit"
  desc "Zulu OpenJDK 15"
  homepage "https://www.azul.com/products/core/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&bundle_type=jdk&javafx=false&ext=dmg&os=macos&arch=#{livecheckarch}"
    strategy :page_match do |page|
      match = page.match(/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)*)-macosx_#{arch}\.dmg/i)
      "#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
