cask "microsoft-openjdk11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.20.1"
  sha256 arm:   "4a708ad85023718e8feb58b643258e17a828ed4c203fbd429de384d8aac4e2ae",
         intel: "552958bd65fdfad5eb5654f827448dfd03d81720aa3357cbd192c93ebee41d49"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macOS-#{arch}.pkg",
      verified: "aka.ms/download-jdk/"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(11(?:\.\d+)+)[._-]macOS[._-]#{arch}\.pkg}i)
  end

  pkg "microsoft-jdk-#{version}-macOS-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"

  zap trash: [
    "~/Library/Saved Application State/net.java.openjdk.java.savedState",
    "~/Library/Preferences/net.java.openjdk.java.plist",
  ]
end
