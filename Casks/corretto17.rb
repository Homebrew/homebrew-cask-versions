cask "corretto17" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "17.0.3.6.1"

  if Hardware::CPU.intel?
    sha256 "4d9d3cb7ba8f44b86afb50c658c2395ddd62af5c2127f6bfcf494712cee12793"
  else
    sha256 "36f104f2ab37ad4082e7beefb02d41ee615527af1517f648437ebf740bf715a7"
  end

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "AWS Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch}-macos-jdk.pkg"
    strategy :header_match do |headers|
      headers["location"][%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-#{arch}\.pkg}i, 1]
    end
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
