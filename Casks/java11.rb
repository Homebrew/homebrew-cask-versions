cask 'java11' do
  version '11.0.3,12'
  sha256 '93683d5d846188883b1fd48da4c9de6953969416e5552bacb7adf8d0c8397bb8'

  url "https://download.oracle.com/java/GA/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK Java Development Kit'
  homepage 'https://www.oracle.com/technetwork/java/javase/'

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"

  uninstall rmdir: '/Library/Java/JavaVirtualMachines'
end
