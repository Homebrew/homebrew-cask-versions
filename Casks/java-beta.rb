cask "java-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "18,33"

  if Hardware::CPU.intel?
    sha256 "3d8908cbaede6034541cff3474b571b18227ebf0d6cc6d700f443b1e7aa92fa2"
  else
    sha256 "960886ff388f24cdeff1e9c7330b10c9bb7c996a97ea37cb0a41b13e68d1d4a7"
  end

  url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.csv.second}/GPL/openjdk-#{version.csv.first}-ea+#{version.csv.second}_macos-#{arch}_bin.tar.gz"
  name "OpenJDK Early Access Java Development Kit"
  desc "Early access development kit for the Java programming language"
  homepage "https://jdk.java.net/"

  livecheck do
    url "https://jdk.java.net/#{version.major}/"
    strategy :page_match do |page|
      match = page.match(/openjdk-(\d+)-ea\+(\d+)_macos-#{arch}_bin\.tar\.gz/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  artifact "jdk-#{version.csv.first}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.csv.first}.jdk"
end
