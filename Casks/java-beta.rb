cask "java-beta" do
  arch arm: "aarch64", intel: "x64"

  version "22,26"
  sha256 arm:   "265c0e46cd1a5e137385f2a4344e0b2d5b1b1200af5e292539bd3eae1c1373c9",
         intel: "738ce2ac3cbd17bb99b5c22c4c96e721888817ed16c027a22946971bcb8237b1"

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

  zap trash: "~/Library/Saved Application State/net.java.openjdk*.savedState"
end
