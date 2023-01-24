cask "java-beta" do
  arch arm: "aarch64", intel: "x64"

  version "20,32"
  sha256 arm:   "843455b131af9cf05708ad77fdafde30038af82b187f5e6e5b5bd0cf59f890c1",
         intel: "5711830113cd7c1cac88c8a2a9b3fa7084944e8b38af29774bdc1c8f771c136f"

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
