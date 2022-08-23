cask "java-beta" do
  arch arm: "aarch64", intel: "x64"

  version "19,877d6127e982470ba2a7faa31cc93d04,35"
  sha256 arm:   "a54aa5134e797c41c516937e555caa671ba70dafbac1b78d74751333f673061d",
         intel: "e78eae7d8957f27d530196c59f9b6cba68931ee94ee30fb49f2fe6d17a44a882"

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
