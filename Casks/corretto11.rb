cask "corretto11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.20.8.1"
  sha256 arm:   "6872995486552eeb7ab0a8b4e899b6daa514bc5903cb927fd104a6abe8fee0e9",
         intel: "e5c167fe8317260864a66bc17298929739c07b9cbb24b5af592c237fdfac66fe"

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
