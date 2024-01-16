cask "oracle-jdk17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.10"
  sha256 arm:   "c81ef4f8bc20f90b721b95bdca154cb87dc4f14cc33630301bec19144774f58e",
         intel: "6b2e68a385ac02986378453eaadc4986dc62ae5e206a0e3552c68a56bf82eabd"

  url "https://download.oracle.com/java/#{version.major}/archive/jdk-#{version}_macos-#{arch}_bin.dmg"
  name "Oracle Java Standard Edition Development Kit"
  desc "JDK from Oracle"
  homepage "https://www.oracle.com/java/technologies/downloads/"

  livecheck do
    url "https://www.oracle.com/java/technologies/javase/#{version.major}u-relnotes.html"
    regex(/<li>\s*JDK\s*v?(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :mojave"

  pkg "JDK #{version}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version}"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/no-fee-license.html"
  end
end
