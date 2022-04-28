cask "semeru-jdk8-open" do
  version "8u332-b09,openj9-0.32.0"
  sha256 "3a8e720aa1b14bd39ee5a16a46215b17bba43e4734e6c7e373204553e13360f2"

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
