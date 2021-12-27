cask "temurin8" do
  version "8,312,07"
  sha256 "468bd64621e7fb2e1d80becfd8d53127a41182e283f94cb75a204ef00976adfb"

  url "https://github.com/adoptium/temurin8-binaries/releases/download/jdk#{version.csv[0]}u#{version.csv[1]}-b#{version.csv[2]}/OpenJDK#{version.csv[0]}U-jdk_x64_mac_hotspot_#{version.csv[0]}u#{version.csv[1]}b#{version.csv[2]}.pkg",
      verified: "github.com/adoptium/temurin8-binaries/"
  name "Eclipse Temurin 8"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  livecheck do
    url "https://api.adoptium.net/v3/assets/feature_releases/8/ga?architecture=x64&image_type=jdk&jvm_impl=hotspot&os=mac&page=0&page_size=1&project=jdk&sort_method=DEFAULT&sort_order=DESC&vendor=eclipse"
    strategy :page_match do |page|
      JSON.parse(page).map do |release|
        match = release["release_name"].match(/^jdk(\d+)u(\d+)-b(\d+)$/)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]}"
      end.compact
    end
  end

  pkg "OpenJDK#{version.csv[0]}U-jdk_x64_mac_hotspot_#{version.csv[0]}u#{version.csv[1]}b#{version.csv[2]}.pkg"

  uninstall pkgutil: "net.temurin.#{version.csv[0]}.jdk"
end
