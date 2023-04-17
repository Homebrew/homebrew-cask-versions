cask "corretto11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.18.10.1"
  sha256 arm:   "00db0b464a84fdc8c581d14516fd40ca11cebc6622d2032ab4219d50d77e8aa0",
         intel: "f19d4cc39beb60982ffdfaeefb98100fd8d673b7bd3b0f5acd8306c9f78b21dd"

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
