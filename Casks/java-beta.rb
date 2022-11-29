cask "java-beta" do
  arch arm: "aarch64", intel: "x64"

  version "20,25"
  sha256 arm:   "36f1f7a523d970f98b5fdd48b08c10252b0dcf1272053a7fec1dd6eb1f0e44a9",
         intel: "99b8f6ab246b6b8dfdd7b4802bf8dbd2934d1d27dc9c7aa256336d98ff4b97d0"

  url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.csv.second}/GPL/openjdk-#{version.csv.first}-ea+#{version.csv.second}_macos-#{arch}_bin.tar.gz"
  name "OpenJDK Early Access Java Development Kit"
  desc "Early access development kit for the Java programming language"
  homepage "https://jdk.java.net/"

  livecheck do
    url "https://jdk.java.net/#{version.major}/"
    regex(%r{href=.*?/GPL/openjdk-(\d+)-ea\+(\d+)_macos-#{arch}_bin\.t}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  artifact "jdk-#{version.csv.first}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.csv.first}.jdk"
end
