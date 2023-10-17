cask "corretto8" do
  arch arm: "aarch64", intel: "x64"

  version "8.392.08.1"
  sha256 arm:   "c9c9d9004ed11487a37a274cb1e230bc90ff730ea78cefd7fcd75c635e82c650",
         intel: "f6524417a1c9cef7c4e766409809ddcdbcd9ed5f2e0bd777804c7cc4a6055eac"

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
  # No zap stanza required
end
