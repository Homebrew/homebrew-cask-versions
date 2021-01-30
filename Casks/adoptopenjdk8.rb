cask "adoptopenjdk8" do
  version "8,282:b08"
  sha256 "f12d380ceae806d02c4cae23bdc601402c543692c763122286b99d8ef6059794"

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
