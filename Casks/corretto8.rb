cask "corretto8" do
  arch arm: "aarch64", intel: "x64"

  version "8.342.07.3"
  sha256 arm:   "159d27625838c12f0fa6f6edc7b3c50924362f022c4490605f3798d947bcf9bf",
         intel: "5bde0f3682e9f809d620220bbca414a3493af41ce219509d840b17da85e0070a"

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
end
