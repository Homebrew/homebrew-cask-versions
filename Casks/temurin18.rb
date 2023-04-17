cask "temurin18" do
  arch arm: "aarch64", intel: "x64"

  version "18.0.2.1,1"
  sha256 arm:   "21797abd8a53efcc89da3b4613697a0b2737f3c3cbb7f6ce0e5128478d5ce262",
         intel: "ca4a486dfe344cf9476fb7174df66740826f679c9356caf25f14246ea79e25b9"

  url "https://github.com/adoptium/temurin#{version.major}-binaries/releases/download/jdk-#{version.csv.first}%2B#{version.csv.second}/OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg",
      verified: "github.com/adoptium/"
  name "Eclipse Temurin Java Development Kit"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  pkg "OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg"

  uninstall pkgutil: "net.temurin.#{version.major}.jdk"

  caveats do
    discontinued
  end

  # No zap stanza required
end
