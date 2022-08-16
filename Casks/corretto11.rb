cask "corretto11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.16.9.1"

  on_intel do
    sha256 "1b256d7104ebc0f72d7745962e0ab47cbbbd976f93481f31bd4a7d40812d739a"
  end
  on_arm do
    sha256 "ba5fdc6ce029f8aa2e2789408266334c480616a058f49b3c8696a591fbc997a3"
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
