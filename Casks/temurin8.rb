cask "temurin8" do
  version "8,322,06"
  sha256 "df9bf8ca38a8e7dd3d6c9a96f9d30de8f46442430b30f43bd4b74a760f1d3987"

  url "https://github.com/adoptium/temurin8-binaries/releases/download/jdk#{version.csv[0]}u#{version.csv[1]}-b#{version.csv[2]}/OpenJDK#{version.csv[0]}U-jdk_x64_mac_hotspot_#{version.csv[0]}u#{version.csv[1]}b#{version.csv[2]}.pkg",
      verified: "github.com/adoptium/temurin8-binaries/"
  name "Eclipse Temurin 8"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  livecheck do
    url "https://api.adoptium.net/v3/assets/feature_releases/8/ga?architecture=x64&image_type=jdk&jvm_impl=hotspot&os=mac&page=0&page_size=1&project=jdk&sort_method=DEFAULT&sort_order=DESC&vendor=eclipse"
    regex(/^jdk(\d+)u(\d+)-b(\d+)$/i)
    strategy :page_match do |page, regex|
      JSON.parse(page).map do |release|
        match = release["release_name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  pkg "OpenJDK#{version.csv[0]}U-jdk_x64_mac_hotspot_#{version.csv[0]}u#{version.csv[1]}b#{version.csv[2]}.pkg"

  uninstall pkgutil: "net.temurin.#{version.csv[0]}.jdk"
end
