cask "corretto8" do
  arch arm: "aarch64", intel: "x64"

  version "8.402.07.1"
  sha256 arm:   "b66a1ddc4c716aca43077a95dfc9787859a1edec5d7298869f36406b9d465273",
         intel: "d00e0ac2369b27446df37ee8e95400dcb1f8a9a7a3c80ba70c0ae49763640b7e"

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
