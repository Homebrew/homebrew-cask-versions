cask "zulu11" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"
  choice = Hardware::CPU.intel? ? "x86" : "arm"

  version "11.0.15,11.56.19-ca"

  if Hardware::CPU.intel?
    sha256 "2614e5c5de8e989d4d81759de4c333aa5b867b17ab9ee78754309ba65c7f6f55"
  else
    sha256 "6bb0d2c6e8a29dcd9c577bbb2986352ba12481a9549ac2c0bcfd00ed60e538d2"
  end

  url "https://cdn.azul.com/zulu/bin/zulu#{version.csv.second}-jdk#{version.csv.first}-macosx_#{arch}.tar.gz",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java Standard Edition Development Kit"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/products/core/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&bundle_type=jdk&javafx=false&ext=dmg&os=macos&arch=#{choice}"
    strategy :page_match do |page|
      match = page.match(/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)+)-macosx_#{arch}\.tar.gz/i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  artifact "zulu#{version.csv.second}-jdk#{version.csv.first}-macosx_#{arch}/zulu-#{version.major}.jdk", target: "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk"
end
