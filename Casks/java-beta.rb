cask 'java-beta' do
  version '14,32'
  sha256 'c2a883e5e117f534c3c7d6783dd422101033a0eab172e72f7e38781f727619df'

  url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}-ea+#{version.after_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK Early Access Java Development Kit'
  homepage 'https://jdk.java.net/'

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"
end
