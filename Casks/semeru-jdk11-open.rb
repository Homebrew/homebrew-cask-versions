cask "semeru-jdk11-open" do
  version "11.0.13+8,openj9-0.29.0"
  sha256 "19787a8728a2cb2d264c7656a5f494be0874046157610b6b248f6d46cc12a592"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.before_comma}_#{version.after_comma}/ibm-semeru-open-jdk_x64_mac_#{version.before_comma.tr("+", "_")}_#{version.after_comma}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
  name "IBM Semeru Runtime (JDK 11) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/java/semeru-runtimes"

  livecheck do
    url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases"
    regex(/["'][^"']*ibm-semeru-open-jdk_x64_mac[._-](\d+(?:[._]\d+)+)[._-](.+)\.pkg["']/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0].tr("_", "+")},#{match[1]}" }
    end
  end

  pkg "ibm-semeru-open-jdk_x64_mac_#{version.before_comma.tr("+", "_")}_#{version.after_comma}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.#{version.major}.jdk"
end
