cask "corretto17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.7.7.1"
  sha256 arm:   "84999b9bd5f3d6c70d7c709e0cf595a11282fa38ce2b7eae78fa3735a4170d28",
         intel: "8af9245c4a7893960e942dfbf40cb12e18dcfc16eae8cc9c92f544d775fb8150"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
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
