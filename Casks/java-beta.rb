cask 'java-beta' do
  version '12,32'
  sha256 '1f9f548ddedf9ab4b954eb445480e71e991bc6634f02af740bea5775b87768b3'

  url "https://download.java.net/java/GA/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK Early Access Java Development Kit'
  homepage 'https://jdk.java.net/'

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"

  uninstall rmdir: '/Library/Java/JavaVirtualMachines'
end
