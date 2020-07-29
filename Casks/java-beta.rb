cask "java-beta" do
  version "15,26"
  sha256 "e6587942e4530f55536a9c5572d0219d55c291da459c61284c411ab108abec04"

  url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}-ea+#{version.after_comma}_osx-x64_bin.tar.gz"
  name "OpenJDK Early Access Java Development Kit"
  homepage "https://jdk.java.net/"

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"
end
