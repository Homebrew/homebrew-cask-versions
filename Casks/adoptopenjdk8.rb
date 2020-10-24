cask "adoptopenjdk8" do
  version "8,272:b10"
  sha256 "fdc88dc71582eadca231d463a947e06504a64c0d7979e5b5f85c6dd8b32f6202"

  # github.com/AdoptOpenJDK/openjdk8-binaries/ was verified as official when first introduced to the cask
  url "https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk#{version.before_comma}u#{version.after_comma.before_colon}-#{version.after_colon}/OpenJDK#{version.before_comma}U-jdk_x64_mac_hotspot_#{version.before_comma}u#{version.after_comma.before_colon}#{version.after_comma.after_colon}.pkg"
  appcast "https://github.com/adoptopenjdk/openjdk#{version.before_comma}-binaries/releases.atom"
  name "AdoptOpenJDK 8"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK#{version.before_comma}U-jdk_x64_mac_hotspot_#{version.before_comma}u#{version.after_comma.before_colon}#{version.after_comma.after_colon}.pkg"

  uninstall pkgutil: "net.adoptopenjdk.#{version.before_comma}.jdk"
end
