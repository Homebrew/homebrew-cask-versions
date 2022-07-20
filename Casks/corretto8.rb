cask "corretto8" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"
  version "8.342.07.1"

  if Hardware::CPU.intel?
    sha256 "d93a108ef9dae8f8979fc5d2ae53613fb2b60e9d42be41bac5a22f064c17493e"
  else
    sha256 "76e98930dcd72bf0f9a529e3d713fa3a9a2a3a0c7f09c8add2a8e47ffa3e7ef4"
  end

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
