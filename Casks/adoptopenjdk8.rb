cask "adoptopenjdk8" do
  version "8,292,b10"
  sha256 "4e200bc752337abc9dbfddf125db6a600f2ec53566f6f119a83036c8242a7672"

  url "https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk#{version.csv.first}u#{version.csv.second}-#{version.csv.third}/OpenJDK#{version.csv.first}U-jdk_x64_mac_hotspot_#{version.csv.first}u#{version.csv.second}#{version.csv.third}.pkg",
      verified: "github.com/AdoptOpenJDK/openjdk8-binaries/"
  name "AdoptOpenJDK 8"
  desc "Prebuilt OpenJDK binaries"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK#{version.csv.first}U-jdk_x64_mac_hotspot_#{version.csv.first}u#{version.csv.second}#{version.csv.third}.pkg"

  uninstall pkgutil: "net.adoptopenjdk.#{version.csv.first}.jdk"

  caveats do
    discontinued

    <<~EOS
      Temurin is the official successor to this software:

        brew install --cask temurin8
    EOS
  end
end
