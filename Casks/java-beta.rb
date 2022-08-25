cask "java-beta" do
  arch arm: "aarch64", intel: "x64"

  version "19,877d6127e982470ba2a7faa31cc93d04,36"
  sha256 arm:   "6691c199fdc6d71826f37d89d2e1a2089ba8bdd98b7001c1d4e8d5d01d6b022b",
         intel: "bfd33f5b2590fd552ae2d9231340c6b4704a872f927dce1c52860b78c49a5a11"

  url "https://download.java.net/java/GA/jdk#{version.major}/#{version.csv.second}/#{version.csv.third}/GPL/openjdk-#{version.csv.first}_macos-#{arch}_bin.tar.gz"
  name "OpenJDK Early Access Java Development Kit"
  desc "Early access development kit for the Java programming language"
  homepage "https://jdk.java.net/"

  livecheck do
    url "https://jdk.java.net/#{version.major}/"
    regex(%r{([^/]+)/(\d+)/GPL/openjdk-(\d+)_macos-#{arch}_bin\.t}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
    end
  end

  artifact "jdk-#{version.csv.first}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.csv.first}.jdk"
end
