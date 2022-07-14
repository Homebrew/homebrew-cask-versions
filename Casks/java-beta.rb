cask "java-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "19,31"

  if Hardware::CPU.intel?
    sha256 "7cb6574374a9bd0645ff785be3a1d4551864a78e21c37bf66ea196bd5a1fb223"
  else
    sha256 "d5c0485061c9f8dcff7547d5991ff71d26c53f8869ffb708dd0a1a6e42189811"
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
