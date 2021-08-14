cask "java-beta" do
  version "18,10"

  if Hardware::CPU.intel?
    sha256 "8bc1fcf92a67511706f4943c1f8bae8f473c18ec0ec84eabb98459d55f87e344"

    url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}-ea+#{version.after_comma}_macos-x64_bin.tar.gz"
  else
    sha256 "60c777f52e9e0db83bca2a8e34f14eb6f055fd318db3ec2b0a206d720137ae0d"

    url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}-ea+#{version.after_comma}_macos-aarch64_bin.tar.gz"
  end

  name "OpenJDK Early Access Java Development Kit"
  desc "Early access development kit for the Java programming language"
  homepage "https://jdk.java.net/"

  livecheck do
    url "https://jdk.java.net/#{version.major}/"
    strategy :page_match do |page|
      match = page.match(/openjdk-(\d+)-ea\+(\d+)_macos-x64_bin\.tar\.gz/i)
      "#{match[1]},#{match[2]}"
    end
  end

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"
end
