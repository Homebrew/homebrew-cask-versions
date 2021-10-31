cask "java-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "18,21"

  if Hardware::CPU.intel?
    sha256 "fea5879bad743ca94c1860e2568f9058a0edbe8281a9d8aefee85a877bf612ee"
  else
    sha256 "2fcaa76c0f05f6e1a66c92796b80f31198248e214fc728c9e8c8e1d2eed6590f"
  end

  url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}-ea+#{version.after_comma}_macos-#{arch}_bin.tar.gz"
  name "OpenJDK Early Access Java Development Kit"
  desc "Early access development kit for the Java programming language"
  homepage "https://jdk.java.net/"

  livecheck do
    url "https://jdk.java.net/#{version.major}/"
    strategy :page_match do |page|
      match = page.match(/openjdk-(\d+)-ea\+(\d+)_macos-#{arch}_bin\.tar\.gz/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  artifact "jdk-#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"
end
