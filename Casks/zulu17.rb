cask "zulu17" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"
  choice = Hardware::CPU.intel? ? "x86" : "arm"

  version "17.0.3,17.34.19-ca"

  if Hardware::CPU.intel?
    sha256 "a889b2c550b6cb6421c6e559c1a98a3f2a38ebe9feef2b48157a582347bac367"
  else
    sha256 "79a457f106bf32aafd261a4748471fd10f5ce2a9aa2cc816a91864104c008dff"
  end

  url "https://cdn.azul.com/zulu/bin/zulu#{version.csv.second}-jdk#{version.csv.first}-macosx_#{arch}.tar.gz",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java Standard Edition Development Kit"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/downloads/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&bundle_type=jdk&javafx=false&ext=dmg&os=macos&arch=#{choice}"
    strategy :page_match do |page|
      match = page.match(/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)*)-macosx_#{arch}\.tar.gz/i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: ">= :mojave"

  artifact "zulu#{version.csv.second}-jdk#{version.csv.first}-macosx_#{arch}/zulu-#{version.major}.jdk", target: "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk"
end
