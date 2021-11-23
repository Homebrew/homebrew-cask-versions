cask "temurin8" do
  version "8,312,b07"
  sha256 "231cb0450c603cc861ade707b1deb01a8cbe2efd6c93e49c1707f3d899f92a93"

  url "https://github.com/adoptium/temurin8-binaries/releases/download/jdk#{version.csv[0]}u#{version.csv[1]}-#{version.csv[2]}/OpenJDK#{version.csv[0]}U-jdk_x64_mac_hotspot_#{version.csv[0]}u#{version.csv[1]}#{version.csv[2]}.pkg",
      verified: "github.com/adoptium/temurin8-binaries/"
  name "Eclipse Temurin 8"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  livecheck do
    url :url
    strategy :github_latest do |page|
      match = page.match(%r{href=.*/jdk(\d+)u(\d+)-(b\d+).+["' >]}i)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  pkg "OpenJDK#{version.csv[0]}U-jdk_x64_mac_hotspot_#{version.csv[0]}u#{version.csv[1]}#{version.csv[2]}.pkg"

  uninstall pkgutil: "net.temurin.#{version.csv[0]}.jdk"
end
