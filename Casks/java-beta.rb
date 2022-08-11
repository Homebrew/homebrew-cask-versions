cask "java-beta" do
  arch arm: "aarch64", intel: "x64"

  version "19,34"

  if Hardware::CPU.intel?
    sha256 "772c2dd9f1eba0817622d21bacc3707f830e877d50f7270f57efed496b8c3179"
  else
    sha256 "d8d26c800f99e2d6f9c7179f29c39f2cca76819c3aa598259c8d7ab86f31a6e1"
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
