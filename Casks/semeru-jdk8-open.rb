cask "semeru-jdk8-open" do
  version "8u345-b01,openj9-0.33.1"
  sha256 "30d2870829de8d194baee072b1d07b4e0b7d19b3e8fa744baa81ead9588800ff"

  url "https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk#{version.csv.first}_#{version.csv.second}/ibm-semeru-open-jdk_x64_mac_#{version.csv.first.tr("-", "")}_#{version.csv.second}.pkg",
      verified: "github.com/ibmruntimes/semeru8-binaries/"
  name "IBM Semeru Runtime (JDK 8) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/java/semeru-runtimes"

  livecheck do
    url "https://github.com/ibmruntimes/semeru8-binaries/releases"
    regex(%r{href=.*?/tag/jdk(\d+u\d+)[._-](b\d+)[._-]([^&]+)&quot;}i)
    strategy :github_latest do |page, regex|
      page.scan(regex).map { |match| "#{match[0]}-#{match[1]},#{match[2]}" }
    end
  end

  pkg "ibm-semeru-open-jdk_x64_mac_#{version.csv.first.tr("-", "")}_#{version.csv.second}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.8.jdk"
end
