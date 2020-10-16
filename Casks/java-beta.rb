cask "java-beta" do
  version "16,20"
  sha256 "5cc94a6165d433c7070464edebaf971d563f90cda7f59196dffadc03eab40961"

  url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}-ea+#{version.after_comma}_osx-x64_bin.tar.gz"
  name "OpenJDK Early Access Java Development Kit"
  homepage "https://jdk.java.net/"

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"
end
