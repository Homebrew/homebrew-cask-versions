cask "corretto17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.4.9.1"

  on_intel do
    sha256 "a91db130cbf99ab993d5d579a71ee7cd7c2682c2b6698d9353db1a5393b01f7f"
  end
  on_arm do
    sha256 "05951b62c9bc4b28b24c2f6a81b7bbc2dc94ecb74588b461cdc0d25b71d61ffc"
  end

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
