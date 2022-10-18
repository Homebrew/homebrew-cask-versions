cask "corretto11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.17.8.1"
  sha256 arm:   "b725e080fb2a1784b0b289103648a9a6db72bccd1299a89bd2424680e1c0bf7f",
         intel: "799585e8a00806e5b4eccef7b004da35be408bf20f37fcfafc4adad0c68886c3"

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
