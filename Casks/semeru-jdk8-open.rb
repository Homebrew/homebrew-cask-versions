cask "semeru-jdk8-open" do
  version "8u312-b07,openj9-0.29.0"
  sha256 "f3ce369d3627bce344c9c5d2d76af3ae5b8c8f59c642f04c669d1e4269c29bba"

  url "https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk#{version.csv.first}_#{version.csv.second}/ibm-semeru-open-jdk_x64_mac_#{version.csv.first.tr("-", "")}_#{version.csv.second}.pkg",
      verified: "github.com/ibmruntimes/semeru8-binaries/"
  name "IBM Semeru Runtime (JDK 8) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/java/semeru-runtimes"

  livecheck do
    url "https://github.com/ibmruntimes/semeru8-binaries/releases"
    strategy :github_latest do |page|
      match = page.match(%r{href=.*?/tag/jdk(\d+u\d+)[._-](b\d+)[._-]([^&]+)&quot;}i)
      next if match.blank?

      "#{match[1]}-#{match[2]},#{match[3]}"
    end
  end

  pkg "ibm-semeru-open-jdk_x64_mac_#{version.before_comma.tr("-", "")}_#{version.after_comma}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.8.jdk"
end
