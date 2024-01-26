cask "java-beta" do
  arch arm: "aarch64", intel: "x64"

  version "22,33"
  sha256 arm:   "48780a115c4dd8a6723e8bf60b47b4d25b619cbe14acd10be0e4cb0d34f83d1a",
         intel: "4832a9dfebbdceb8ab136dff132e8e8be9b4157428fe78c8d6b62c0bcc991907"

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
