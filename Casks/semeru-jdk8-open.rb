cask "semeru-jdk8-open" do
  version "8u372-b07,openj9-0.38.0"
  sha256 "de039071284ad1460974c85111d08d81d1480178054f090e5c4f992164a0ff30"

  url "https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk#{version.csv.first}_#{version.csv.second}/ibm-semeru-open-jdk_x64_mac_#{version.csv.first.tr("-", "")}_#{version.csv.second}.pkg",
      verified: "github.com/ibmruntimes/semeru8-binaries/"
  name "IBM Semeru Runtime (JDK 8) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/java/semeru-runtimes"

  livecheck do
    url :stable
    regex(/^(?:jdk)?(\d+u\d+)[._-](b\d+)[._-](.+?)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[0]}-#{match[1]},#{match[2]}" }
    end
  end

  pkg "ibm-semeru-open-jdk_x64_mac_#{version.csv.first.tr("-", "")}_#{version.csv.second}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.8.jdk"

  # No zap stanza required
end
