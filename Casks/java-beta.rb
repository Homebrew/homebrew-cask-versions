cask "java-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "19,27"

  if Hardware::CPU.intel?
    sha256 "0460ad880b2b33a02b5ca61653a9ef455083e4a2ee8fdda6d50e6d72b23cd954"
  else
    sha256 "89e8f71af204217aa70bf59c66b828903faab6d9e03897e5068e29b2753c7b09"
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
