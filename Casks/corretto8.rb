cask "corretto8" do
  arch arm: "aarch64", intel: "x64"

  version "8.382.05.1"
  sha256 arm:   "921ba14efefe021f025449fd682028f7a2427547b74b3dcc6d8c23cc756c2830",
         intel: "746935c7040f9d1938be3224b76268508eff2e41c16974e68ae916fd2f3c8773"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "Amazon Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    regex(%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-#{arch}\.pkg}i)
    strategy :header_match
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
  # No zap stanza required
end
