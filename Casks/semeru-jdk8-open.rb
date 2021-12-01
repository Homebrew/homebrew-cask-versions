cask "semeru-jdk8-open" do
  version "8u312-b07,openj9-0.29.0"
  sha256 "f3ce369d3627bce344c9c5d2d76af3ae5b8c8f59c642f04c669d1e4269c29bba"

  url "https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk#{version.before_comma}_#{version.after_comma}/ibm-semeru-open-jdk_x64_mac_#{version.before_comma.tr("-", "")}_#{version.after_comma}.pkg",
      verified: "github.com/ibmruntimes/semeru8-binaries/"
  name "IBM Semeru Runtime (JDK 8) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/java/semeru-runtimes"

  livecheck do
    url "https://github.com/ibmruntimes/semeru8-binaries/releases"
    regex(/["'][^"']*ibm-semeru-open-jdk_x64_mac[._-](\d+u\d+)(b\d+)[._-](.+)\.pkg["']/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]}-#{match[1]},#{match[2]}" }
    end
  end

  pkg "ibm-semeru-open-jdk_x64_mac_#{version.before_comma.tr("-", "")}_#{version.after_comma}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.8.jdk"
end
