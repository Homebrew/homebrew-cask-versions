cask "oracle-jdk17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.7"
  sha256 arm:   "38ebbc6eb302cb117203739f4f2afe67b66a5acaca900aa9d409658d780c7d52",
         intel: "2647435c86e94157059e553a3c403ce5a1d28783564152d38390c5b6b2ae4c65"

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
