cask "corretto11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.20.9.1"
  sha256 arm:   "460c24c1ad08619e523387bcd9a06fee471b9b5a7f0a3a8cc49e03d16af59d29",
         intel: "4cb4ed552fd654016a30f7d02e96056e88714b7a30c7812424ab1ea352ce2443"

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
  # No zap stanza required
end
