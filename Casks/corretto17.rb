cask "corretto17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.9.8.1"
  sha256 arm:   "69f0f4899eb844a650b98aa52fbd86dca2c4efc1cd3235f6f441af2d87c225b6",
         intel: "c7b0317afb7490eeafc6af6f3bd1edf41afb46380a173b55a81f1b721e18d3f7"

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
