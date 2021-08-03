cask "java-beta" do
  version "17,33"

  if Hardware::CPU.intel?
    sha256 "5d2497d7d9e82eb7d5e99ae5852878e1e919dbed8eae31706194785d6f0b6f26"

    url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}-ea+#{version.after_comma}_macos-x64_bin.tar.gz"
  else
    sha256 "db40090e7d9f20a2b71cd396393cbdd4e0ef6bbb90cb0f119701c006fba82744"

    url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}-ea+#{version.after_comma}_macos-aarch64_bin.tar.gz"
  end

  name "OpenJDK Early Access Java Development Kit"
  desc "Early access development kit for the Java programming language"
  homepage "https://jdk.java.net/"

  livecheck do
    url "https://jdk.java.net/#{version.major}/"
    strategy :page_match do |page|
      match = page.match(/openjdk-(\d+)-ea\+(\d+)_macos-x64_bin\.tar\.gz/i)
      "#{match[1]},#{match[2]}"
    end
  end

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"
end
