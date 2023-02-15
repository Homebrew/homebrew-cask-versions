cask "semeru-jdk11-open" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.18+10,openj9-0.36.1"
  sha256 arm:   "d9eda90b3ef4d2c44ec9928be4c0268432f00c1c7c0f786e37e8e5993d8036b6",
         intel: "1a2461143921ddc37101db997c3d21d7f3851cfcca154275cea5f7b2aed45a2b"

  url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases/download/jdk-#{version.csv.first}_#{version.csv.second}/ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first.tr("+", "_")}_#{version.csv.second}.pkg",
      verified: "github.com/ibmruntimes/semeru#{version.major}-binaries/"
  name "IBM Semeru Runtime (JDK 11) Open Edition"
  desc "Production-ready JDK with the OpenJDK class libraries and the Eclipse OpenJ9 JVM"
  homepage "https://developer.ibm.com/languages/java/semeru-runtimes"

  livecheck do
    url "https://github.com/ibmruntimes/semeru#{version.major}-binaries/releases"
    regex(%r{href=.*?/tag/jdk[._-](\d+(?:[._+]\d+)+)[._-]([^&]+)&quot;}i)
    strategy :github_latest do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  pkg "ibm-semeru-open-jdk_#{arch}_mac_#{version.csv.first.tr("+", "_")}_#{version.csv.second}.pkg"

  uninstall pkgutil: "net.ibm-semeru-open.#{version.major}.jdk"
end
