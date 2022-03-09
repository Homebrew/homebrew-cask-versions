cask "corretto8" do
  if Hardware::CPU.intel?
    arch_string = "x64"
    version "8.322.06.1"
    sha256 "c20d7454fc0b461d3d354b6d4eed2665fa056d74ef438ef51c26f140203b4386"
  else
    arch_string = "aarch64"
    version "8.322.06.4"
    sha256 "bbca6e00d81070f7c633fbede651ae6bfa71cbc563d250ee2e0c439e69a3e193"
  end

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-#{arch_string}.pkg"
  name "Amazon Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  livecheck do
    url "https://corretto.aws/downloads/latest/amazon-corretto-#{version.major}-#{arch_string}-macos-jdk.pkg"
    strategy :header_match do |headers|
      headers["location"][%r{/amazon-corretto-(\d+(?:\.\d+)+)-macosx-#{arch_string}\.pkg}i, 1]
    end
  end

  pkg "amazon-corretto-#{version}-macosx-#{arch_string}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
