cask "temurin8" do
  version "8,302:b08"
  sha256 "22a5acf972620b67c845eb771ae077ce71be54788993c4a433a3da5439d191c0"

  url "https://github.com/adoptium/temurin8-binaries/releases/download/jdk#{version.before_comma}u#{version.after_comma.before_colon}-#{version.after_colon}/OpenJDK#{version.before_comma}U-jdk_x64_mac_hotspot_#{version.before_comma}u#{version.after_comma.before_colon}#{version.after_comma.after_colon}.pkg",
      verified: "github.com/adoptium/temurin8-binaries/"
  name "Eclipse Temurin 8"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  livecheck do
    url :url
    strategy :github_latest do |page|
      match = page.match(%r{href=.*/jdk(\d+)u(\d+)-(b\d+).+["' >]}i)
      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  pkg "OpenJDK#{version.before_comma}U-jdk_x64_mac_hotspot_#{version.before_comma}u#{version.after_comma.before_colon}#{version.after_comma.after_colon}.pkg"

  uninstall pkgutil: "net.temurin.#{version.before_comma}.jdk"
end
