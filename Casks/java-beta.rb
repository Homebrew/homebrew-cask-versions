cask "java-beta" do
  arch arm: "aarch64", intel: "x64"

  version "21,31"
  sha256 arm:   "88cff610124ebb08c9e88bfbba0d8b05328f04a473b1f141f63b5df1d3d95aa3",
         intel: "0b04011e71957ce5d2ce456400644386c63dfc8eb7c4f323d740f3097e49e1f4"

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
