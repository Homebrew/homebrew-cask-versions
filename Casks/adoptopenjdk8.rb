cask "adoptopenjdk8" do
  version "8,292:b10"
  sha256 "4e200bc752337abc9dbfddf125db6a600f2ec53566f6f119a83036c8242a7672"

  url "https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk#{version.before_comma}u#{version.after_comma.before_colon}-#{version.after_colon}/OpenJDK#{version.before_comma}U-jdk_x64_mac_hotspot_#{version.before_comma}u#{version.after_comma.before_colon}#{version.after_comma.after_colon}.pkg",
      verified: "github.com/AdoptOpenJDK/openjdk8-binaries/"
  name "AdoptOpenJDK 8"
  desc "Prebuilt OpenJDK binaries"
  homepage "https://adoptopenjdk.net/"

  livecheck do
    url :url
    strategy :github_latest do |page|
      match = page.match(%r{href=.*/jdk(\d+)u(\d+)-(b\d+)["' >]}i)
      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  pkg "OpenJDK#{version.before_comma}U-jdk_x64_mac_hotspot_#{version.before_comma}u#{version.after_comma.before_colon}#{version.after_comma.after_colon}.pkg"

  uninstall pkgutil: "net.adoptopenjdk.#{version.before_comma}.jdk"
end
