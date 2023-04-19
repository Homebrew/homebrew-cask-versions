cask "corretto11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.19.7.1"
  sha256 arm:   "ad62c3b4f236922f88bf7b8ab6ab3f6824ffb8368ae6a4d37af653f449163ea7",
         intel: "6239dadace19a20fbc003c9298371a32f92dd29276f94903e90721cea435fa97"

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
