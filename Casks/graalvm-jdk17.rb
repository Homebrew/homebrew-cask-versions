cask "graalvm-jdk17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.8"
  sha256 arm:   "c73d2917c1b681679d90a7e3851b553c328e4028137e19adb301040fe0d43cfd",
         intel: "325c1c5adce1e8b569e87f1e4dffe852f73e7c25e720ea15977f2ca1d7dba1bb"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://www.oracle.com/java/technologies/downloads/"
    regex(/graalvm\s+for\s+jdk\s+(17(?:\.\d+)+)/i)
  end

  artifact "graalvm-jdk-#{version}+9.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
    <<~EOS
      According to https://www.graalvm.org/latest/docs/getting-started/macos/
        This app will not work with quarantine attributes.
    EOS
  end
end
