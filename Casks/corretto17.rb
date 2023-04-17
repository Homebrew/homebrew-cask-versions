cask "corretto17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.6.10.1"
  sha256 arm:   "526d2f664bc5d93aeff6b5d8e1b45d9d644d09b1939bcabbe04cdf692c1f2db2",
         intel: "4de291b2c5e4535fce01a8ced0416424352d2d320794087f62c3a6fd42a3ab0f"

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
