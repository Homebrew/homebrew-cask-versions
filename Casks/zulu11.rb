cask "zulu11" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"
  choice = Hardware::CPU.intel? ? "x86" : "arm"

  version "11.0.14.1,11.54.25-ca"

  if Hardware::CPU.intel?
    sha256 "91b14eaf4f84b9caac2248d1a1e601ce6d7a50cb4d6f73ca64821141a22ab08b"
  else
    sha256 "37c12c6b01f63eac5e2a4276f6dd73603a68d60d3ca4158cdb5e21a633dd1f97"
  end

  url "https://cdn.azul.com/zulu/bin/zulu#{version.csv.second}-jdk#{version.csv.first}-macosx_#{arch}.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java Standard Edition Development Kit"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/products/core/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&bundle_type=jdk&javafx=false&ext=dmg&os=macos&arch=#{choice}"
    strategy :page_match do |page|
      match = page.match(/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)+)-macosx_#{arch}\.dmg/i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
