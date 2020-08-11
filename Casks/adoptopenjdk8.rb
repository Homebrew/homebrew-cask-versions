cask "adoptopenjdk8" do
  version "8,265:b01"
  sha256 "db8b19f943bf96774a805b646b2c0ddd532123391e2e3873fe3720558e6091fe"

  # github.com/AdoptOpenJDK/openjdk8-binaries/ was verified as official when first introduced to the cask
  url "https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk#{version.before_comma}u#{version.after_comma.before_colon}-#{version.after_colon}/OpenJDK#{version.before_comma}U-jdk_x64_mac_hotspot_#{version.before_comma}u#{version.after_comma.before_colon}#{version.after_comma.after_colon}.pkg"
  appcast "https://github.com/adoptopenjdk/openjdk#{version.before_comma}-binaries/releases.atom"
  name "AdoptOpenJDK 8"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK#{version.before_comma}U-jdk_x64_mac_hotspot_#{version.before_comma}u#{version.after_comma.before_colon}#{version.after_comma.after_colon}.pkg"

  uninstall pkgutil: "net.adoptopenjdk.#{version.before_comma}.jdk"
end
