cask "graalvm-jdk17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.9"
  sha256 arm:   "2214b6ecb32faacc84dffcbfae930450abe77c31730c4b6310e22d8f743959a5",
         intel: "29dc9855874e6633df21fd00902ca99ae4a6527add708cee58c84ac61e78c626"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://www.oracle.com/java/technologies/downloads/"
    regex(/graalvm\s+for\s+jdk\s+(17(?:\.\d+)+)/i)
  end

  artifact "graalvm-jdk-#{version}+11.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
    <<~EOS
      According to https://www.graalvm.org/latest/docs/getting-started/macos/
        This app will not work with quarantine attributes.
    EOS
  end
end
