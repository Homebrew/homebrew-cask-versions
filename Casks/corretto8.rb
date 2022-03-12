cask "corretto8" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  if Hardware::CPU.intel?
    version "8.322.06.1"
    sha256 "c20d7454fc0b461d3d354b6d4eed2665fa056d74ef438ef51c26f140203b4386"
  else
    version "8.322.06.4"
    sha256 "bbca6e00d81070f7c633fbede651ae6bfa71cbc563d250ee2e0c439e69a3e193"
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
