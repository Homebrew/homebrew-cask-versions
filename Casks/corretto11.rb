cask "corretto11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.16.9.1"
  sha256 arm:   "a460362f97e5371221e76386ea08ba0773c524f8ce7a2f85cb398b62f5c28aca",
         intel: "1b256d7104ebc0f72d7745962e0ab47cbbbd976f93481f31bd4a7d40812d739a"

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
end
