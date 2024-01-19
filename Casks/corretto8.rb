cask "corretto8" do
  arch arm: "aarch64", intel: "x64"

  version "8.402.08.1"
  sha256 arm:   "8fa923be1c52a9bec98ece6c5a3c9cb8b2c2cab618cff852edc27939c0efafc1",
         intel: "bd1a37740cb9b7592872f629043404cbc589be72c8c8e55c5e6c7087cfced9a4"

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
