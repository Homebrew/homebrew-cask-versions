cask "corretto8" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"
  version "8.342.07.3"

  if Hardware::CPU.intel?
    sha256 "5bde0f3682e9f809d620220bbca414a3493af41ce219509d840b17da85e0070a"
  else
    sha256 "159d27625838c12f0fa6f6edc7b3c50924362f022c4490605f3798d947bcf9bf"
  end

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
