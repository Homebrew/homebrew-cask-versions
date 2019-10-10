cask 'java-beta' do
  version '14,14'
  sha256 'e099496d4dd8851f3df75ee96e0a26f206020f1cd8863bbce01a01566886b60f'

  url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}-ea+#{version.after_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK Early Access Java Development Kit'
  homepage 'https://jdk.java.net/'

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"

  uninstall rmdir: '/Library/Java/JavaVirtualMachines'
end
