cask "java-beta" do
  arch arm: "aarch64", intel: "x64"

  version "20,24"
  sha256 arm:   "2122d0c94f748b870f3479d23e67ff636310729f177dc854b18e29494e3d22f2",
         intel: "997acdedf50e55529148fc390e1c3a9d2fea1bd0255ed1319cfe1f3b5302aabe"

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
