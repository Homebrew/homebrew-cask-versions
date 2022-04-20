cask "corretto8" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"
  version "8.332.08.1"

  if Hardware::CPU.intel?
    sha256 "0168894804bcdbe3729af6743974b8805e362b524eb8c832ab97d4129ef8c9d1"
  else
    sha256 "57ba80a8e09d9c475c6534d76823806ff49b75bf3347b12c5f2edc42c5573ff9"
  end

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "Amazon Corretto JDK"
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
