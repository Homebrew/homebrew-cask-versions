cask "temurin11" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  if Hardware::CPU.intel?
    version "11.0.16,8"
    sha256 "d0607b02fbaf95bffc5ccb44798883111e5fd277e589865f58647335a1334139"
  else
    version "11.0.15,10"
    sha256 "44563c00c8df89e97aadd52b3bb6627c731882b435ef08ebf023ae432b131d68"
  end

  url "https://github.com/adoptium/temurin#{version.major}-binaries/releases/download/jdk-#{version.csv.first}%2B#{version.csv.second}/OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg",
      verified: "github.com/adoptium/"
  name "Eclipse Temurin 11"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  livecheck do
    url "https://api.adoptium.net/v3/assets/feature_releases/#{version.major}/ga?architecture=#{arch}&image_type=jdk&jvm_impl=hotspot&os=mac&page=0&page_size=1&project=jdk&sort_method=DEFAULT&sort_order=DESC&vendor=eclipse"
    regex(/^jdk-(\d+(?:\.\d+)+)\+(\d+(?:\.\d+)*)$/i)
    strategy :page_match do |page, regex|
      JSON.parse(page).map do |release|
        match = release["release_name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  pkg "OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg"

  uninstall pkgutil: "net.temurin.#{version.major}.jdk"
end
