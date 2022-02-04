cask "semeru-jdk8-open" do
  version "8u322-b06,openj9-0.30.0"
  sha256 "55f8dfffc0a3f0a971debe652ffc2e9b227a805e25f08316c5981ae18b17286b"

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

  pkg "ibm-semeru-open-jdk_x64_mac_#{version.csv.first.tr("-", "")}_#{version.csv.second}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.8.jdk"
end
