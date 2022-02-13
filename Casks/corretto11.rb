cask "corretto11" do
  version "11.0.14.10.1"
  sha256 "b5db350456838b4e0c3236f6f830357998ef5ee316eef2a11282b5d821dd6b30"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-x64.pkg"
  name "Amazon Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-x64-macos-jdk.pkg"
    strategy :header_match do |headers|
      headers["location"][%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-x64\.pkg}i, 1]
    end
  end

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
