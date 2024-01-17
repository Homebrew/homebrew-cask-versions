cask "corretto11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.22.7.1"
  sha256 arm:   "bd028eeb310afd50397c80827a15ebcb3e27dc602adb8cae05bbffbd5cb457ef",
         intel: "31a9b98a29c93b06566e171bb93b33490976be1f3c806833da27a2b53d894830"

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
