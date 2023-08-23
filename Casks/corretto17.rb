cask "corretto17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.8.8.1"
  sha256 arm:   "8bececb06e76481ff85774caf9060196ee48782f90e9a127786b55c8caeabf76",
         intel: "2b226cef90ac27d6ee27e80bef83b023495356889bbf88814b653b09cbb022ff"

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
