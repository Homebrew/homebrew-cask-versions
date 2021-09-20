cask "java-beta" do
  version "18,15"

  if Hardware::CPU.intel?
    sha256 "a1b538f76390ce89b0bc77da7dd2507e1f257d911efb21f23a932a5a0476f4b1"

    url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}-ea+#{version.after_comma}_macos-x64_bin.tar.gz"
  else
    sha256 "a2c456c9fbacbe26b4c49cef1cbb7268a17c217962ebad575cf2c2f49b5a6edd"

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
