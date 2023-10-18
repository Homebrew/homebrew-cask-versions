cask "corretto11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.21.9.1"
  sha256 arm:   "520140d06e7a3dac67a76dcfb8f69675d9541ae104fe927f9abb9806797720e3",
         intel: "431b5c5878b1747e0a7f1c72484b8f85ac4a67a0d8af077de2a5f52faf074947"

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
