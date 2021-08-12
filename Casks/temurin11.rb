cask "temurin11" do
  version "11.0.12,7"
  sha256 "14d3bcab539cee1f757849984b6ab330fdf6b2caf7ed7067607c075f7f5d0a62"

  url "https://github.com/adoptium/temurin#{version.major}-binaries/releases/download/jdk-#{version.before_comma}%2B#{version.after_comma}/OpenJDK#{version.major}U-jdk_x64_mac_hotspot_#{version.before_comma}_#{version.after_comma.major}.pkg",
      verified: "github.com/adoptium/"
  name "Eclipse Temurin 11"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  livecheck do
    url :url
    strategy :git do |tags|
      tags.map do |tag|
        match = tag.match(/^jdk-(\d+(?:\.\d+)*)\+(\d+(?:\.\d+)*)$/i)
        "#{match[1]},#{match[2]}" if match
      end.compact
    end
  end

  pkg "OpenJDK#{version.major}U-jdk_x64_mac_hotspot_#{version.before_comma}_#{version.after_comma.major}.pkg"

  uninstall pkgutil: "net.temurin.#{version.major}.jdk"
end
