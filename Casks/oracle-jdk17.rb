cask "oracle-jdk17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.8"
  sha256 arm:   "236ddcd225bede9ae5257e3c85edb7270584ea8e7a40bf612f4a88015cbf234d",
         intel: "036feba4f26bbb5e7a6e8f29f565a5f3bb47d9199ef7af7f06fc13244f2bfb6a"

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
