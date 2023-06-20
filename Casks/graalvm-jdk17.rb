cask "graalvm-jdk17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.7"
  sha256 arm:   "cb45f6585ef02134a6a6ffb6de20db96197486ffef8821ad97b11fe2fc0c23b8",
         intel: "905255762546c69e3bb8d815a5d20e2e3cfa5332b868ab90af7aa0afe21e74ea"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://github.com/oracle/graal.git"
    regex(/jdk[._-]v?(17(?:\.\d+)+)/)
  end

  artifact "graalvm-jdk-#{version}+8.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
  end
end
