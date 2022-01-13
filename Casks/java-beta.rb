cask "java-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "18,31"

  if Hardware::CPU.intel?
    sha256 "9d733bc6dd0cc4a7eb84ae2134f1c32accd108c46d54414d01cb72da1415f052"
  else
    sha256 "f3a32f4f5aa6d8a62bc979bedcad624b1fec1c3fd501430e8650b5724f26b4b3"
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
