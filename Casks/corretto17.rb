cask "corretto17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.5.8.1"
  sha256 arm:   "1e0d967f7e030e710b03fa283d7b735fe515c2cae78206fd6530868fe5b97156",
         intel: "d523f0a7ae4232e7eeebed5608336cdfdc5c1780243a6353d3842f68a5a05a59"

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
