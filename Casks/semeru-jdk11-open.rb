cask "semeru-jdk11-open" do
  version "11.0.14.1+1,openj9-0.30.1"
  sha256 "a448d77b97141976fe25fc351f606170df00867944ca840c7dbbf6c93d90c68b"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.csv.first}_#{version.csv.second}/ibm-semeru-open-jdk_x64_mac_#{version.csv.first.tr("+", "_")}_#{version.csv.second}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
  name "IBM Semeru Runtime (JDK 11) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/java/semeru-runtimes"

  livecheck do
    url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases"
    strategy :github_latest do |page|
      match = page.match(%r{href=.*?/tag/jdk[._-](\d+(?:[._+]\d+)+)[._-]([^&]+)&quot;}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  pkg "ibm-semeru-open-jdk_x64_mac_#{version.csv.first.tr("+", "_")}_#{version.csv.second}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.#{version.major}.jdk"
end
