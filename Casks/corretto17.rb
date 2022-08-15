cask "corretto17" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.4.8.1"

  on_intel do
    sha256 "c062b5bc5838ad5ff61f56ccbec7c5724c8090a80c69d85778bbfbd8a17ceb35"
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
