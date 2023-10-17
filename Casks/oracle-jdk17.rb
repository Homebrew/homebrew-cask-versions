cask "oracle-jdk17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.9"
  sha256 arm:   "143551cb757f158a9ce1c0371c106ee044de4c10c2515b27cb59db2c70fdfc78",
         intel: "31ce9d3f9dbd074bae5b304703e2821da9b94ae5f6ddf80f4aa130155704002b"

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
