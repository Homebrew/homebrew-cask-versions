cask "java-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "19,24"

  if Hardware::CPU.intel?
    sha256 "9d092a39d6393c9bdfeb82b16734dcab1f096c1a8bfd679f36930ffb2ea6255e"
  else
    sha256 "5faa68fd44c0c98ed11fe4a83a41f068ffe216a0ae4f86ed522da3fe2324a1c0"
  end

  url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.csv.second}/GPL/openjdk-#{version.csv.first}-ea+#{version.csv.second}_macos-#{arch}_bin.tar.gz"
  name "OpenJDK Early Access Java Development Kit"
  desc "Early access development kit for the Java programming language"
  homepage "https://jdk.java.net/"

  livecheck do
    url "https://jdk.java.net/#{version.major}/"
    regex(/openjdk-(\d+)-ea\+(\d+)_macos-#{arch}_bin\.t/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  artifact "jdk-#{version.csv.first}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.csv.first}.jdk"
end
