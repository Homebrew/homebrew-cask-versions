cask "corretto8" do
  arch arm: "aarch64", intel: "x64"

  version "8.352.08.1"
  sha256 arm:   "dfa1616331a3e764c70fc46251745b6a2a77a005443ec605ccf547f40caa7cc6",
         intel: "1b105f3f528d8684b7db8765596b8e3e0b10e8d67d806b48ab90df14f22d4de0"

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
