cask "temurin17" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "17.0.3,7"

  if Hardware::CPU.intel?
    sha256 "70afd9b4f76d69a5f9ab3f740a9289f41d23558f02b133e684c80380c265455f"
  else
    sha256 "46da5d1620e9ac231eb8d01cca6714dee67c0db9c67ad340dca2c17bc29763ff"
  end

  url "https://github.com/adoptium/temurin#{version.major}-binaries/releases/download/jdk-#{version.csv.first}%2B#{version.csv.second}/OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg",
      verified: "github.com/adoptium/"
  name "Eclipse Temurin Java Development Kit"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  livecheck do
    url "https://api.adoptium.net/v3/info/release_versions?release_type=ga&architecture=#{arch}&image_type=jdk&jvm_impl=hotspot&os=mac&page=0&page_size=1&project=jdk&sort_method=DEFAULT&sort_order=DESC&vendor=eclipse"
    regex(/^(\d+(?:\.\d+)*)\+(\d+(?:\.\d+)*)$/i)
    strategy :page_match do |page, regex|
      JSON.parse(page)["versions"].map do |version|
        match = version["openjdk_version"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  pkg "OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg"

  uninstall pkgutil: "net.temurin.#{version.major}.jdk"
end
