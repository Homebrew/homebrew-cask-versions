cask "corretto11" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "11.0.16.8.1"

  if Hardware::CPU.intel?
    sha256 "9751a4b23928916532fc1f1594edbe9019d8672d9edbd5d3d5189054afec5120"
  else
    sha256 "705ca08290cdd8a89dc886bcf1753d71765b29bfa5d06d671723ed426c3f58d4"
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
