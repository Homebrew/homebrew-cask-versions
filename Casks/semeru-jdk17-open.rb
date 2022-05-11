cask "semeru-jdk17-open" do
  version "17.0.3+7,openj9-0.32.0"
  sha256 "b1ec52ddf116be15be70fc30565c5635cf9dc0d3ec1344e1d0383ebf3e1460d7"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.csv.first}_#{version.csv.second}/ibm-semeru-open-jdk_x64_mac_#{version.csv.first.tr("+", "_")}_#{version.csv.second}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
  name "IBM Semeru Runtime (JDK 17) Open Edition"
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
