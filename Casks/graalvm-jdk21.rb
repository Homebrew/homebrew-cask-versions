cask "graalvm-jdk21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.2"
  sha256 arm:   "b504f7c570836a9c6b1b92813c5123718636d0ff0f832321129a4fe3a7b9a0b3",
         intel: "3e24632f27be74d039508ea2b0b7862ef8c40784f55785cf6b6e40b4b28d9d53"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://www.oracle.com/java/technologies/downloads/"
    regex(/graalvm\s+for\s+jdk\s+(21(?:\.\d+)+)/i)
  end

  artifact "graalvm-jdk-#{version}+13.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
    <<~EOS
      According to https://www.graalvm.org/jdk21/docs/getting-started/macos/
        This app will not work with quarantine attributes.
    EOS
  end
end
