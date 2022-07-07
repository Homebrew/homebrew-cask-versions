cask "java-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "19,30"

  if Hardware::CPU.intel?
    sha256 "22be0a609867797b398badc5abd5017720bd57373d92096a16c0ec30eeaab66f"
  else
    sha256 "f978b17345b07c6af1106b9b52c5ef223a2cfa157562cf53f8d4198e47d90424"
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
