cask "java-beta" do
  version "17,32"

  if Hardware::CPU.intel?
    sha256 "2d32701522bcb0b66d2344eb8280c802f04e220ff63c859ede16d9a916770a74"

    url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}-ea+#{version.after_comma}_macos-x64_bin.tar.gz"
  else
    sha256 "69323ca39c00cc4de350ebb85956022f9f5b5b3e6bc9133512247c6dd388342c"

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
