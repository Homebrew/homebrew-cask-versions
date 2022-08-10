cask "corretto11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.16.8.3"

  if Hardware::CPU.intel?
    sha256 "6ea0caa2d5cedb859ddb470e54dac08377c216b5921c10dedfb1c2f2e0c58545"
  else
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
