cask "java-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "18,20"

  url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}-ea+#{version.after_comma}_macos-#{arch}_bin.tar.gz"
  if Hardware::CPU.intel?
    sha256 "93c5b60cf693bf612519fce7c5bf9cae50410ac4338d6a4acb975a192ba0487f"
  else
    sha256 "08f77b56280716074244455d49780c68242c7dab4fd207cac725766323ec711a"
  end

  name "OpenJDK Early Access Java Development Kit"
  desc "Early access development kit for the Java programming language"
  homepage "https://jdk.java.net/"

  livecheck do
    url "https://jdk.java.net/#{version.major}/"
    strategy :page_match do |page|
      match = page.match(/openjdk-(\d+)-ea\+(\d+)_macos-#{arch}_bin\.tar\.gz/i)
      "#{match[1]},#{match[2]}"
    end
  end

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"
end
