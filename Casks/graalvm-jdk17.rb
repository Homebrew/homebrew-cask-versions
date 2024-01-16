cask "graalvm-jdk17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.10"
  sha256 arm:   "e944c5ce5da56e683fc8f1a57191b46d9cb702930b1688bda064fcf467d876b8",
         intel: "14f4bd6417809905f86e786c779d0fc2feb840d7dac35ae3503eb25af0530da0"

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
