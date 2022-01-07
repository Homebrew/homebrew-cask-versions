cask "java-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "18,30"

  if Hardware::CPU.intel?
    sha256 "d733f8b715a746b0c4c4c5c363fc08aed02b88bd14efb0b81b2cdf2cb80a3880"
  else
    sha256 "2d1c87d8ab4e8686eae3908a1d03f9b40ce3eef610628c5923205664cb3bf671"
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
