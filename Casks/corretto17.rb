cask "corretto17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.10.7.1"
  sha256 arm:   "da70bcfc74c886ca57a85459a16fdaaad54e58247d23bfe11feb7d4b517abccb",
         intel: "7f50e2b0d717c772dc2ffb0e801b500e23b56274c5773b393ad30422fcc9b182"

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
