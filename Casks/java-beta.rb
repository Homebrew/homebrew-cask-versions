cask "java-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "19,22"

  if Hardware::CPU.intel?
    sha256 "06ae650996061795a1ba9eb90bc45bf1a17ca0bf1c8894da5a72911ce95051d1"
  else
    sha256 "fb90bcafaf8db52f0ce1ab3ebf99ac45345228ddb1e6de03772ec85486033bcf"
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
