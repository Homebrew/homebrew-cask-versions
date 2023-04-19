cask "corretto8" do
  arch arm: "aarch64", intel: "x64"

  version "8.372.07.1"
  sha256 arm:   "4d3be49141f4bf757fa152f20064839249fc86bd17e302d828ec10f868ea4e08",
         intel: "72a96602c3ed21c0362a45816be41ebdb804e10fcb4ce443044e0644d08ab8f4"

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
