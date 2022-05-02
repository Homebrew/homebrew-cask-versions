cask "corretto11" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "11.0.15.9.1"

  if Hardware::CPU.intel?
    sha256 "fdc8c55c21e25b930c5b8a75aaac7ccf711e3885b188ecbae41dc8a55fe440af"
  else
    sha256 "598d38776bcd7588155025f309530ae1f82fabe97530b6589210aa844516ed48"
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
