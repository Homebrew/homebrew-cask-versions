cask 'java-beta' do
  version '15,24'
  sha256 '95b22ea3c6151d49b3e2700be4b862aba7a543e0b0577e76ee61dfd46b1f8a67'

  url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}-ea+#{version.after_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK Early Access Java Development Kit'
  homepage 'https://jdk.java.net/'

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"
end
