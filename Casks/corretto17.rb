cask "corretto17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.8.7.1"
  sha256 arm:   "55141d0dd3f090b480fd80528e1ff2bcb52118c046ef6d757657011e609930f2",
         intel: "69edfc2fde808d69381fbfd5199a0bc1f105788ee3c9635ba08e7e54f4775389"

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
