cask "java-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "18,29"

  if Hardware::CPU.intel?
    sha256 "742281c1271155b32bb49fd50fa6368d80fcb4a9028a98e35bb87fcee0234ba9"
  else
    sha256 "4ec1203001df7b6b7b3e06065079a42b09f1bb46858b95cf72a1f7ea667be74d"
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
