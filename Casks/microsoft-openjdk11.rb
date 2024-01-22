cask "microsoft-openjdk11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.22"
  sha256 arm:   "e3ced9e21b182adfc6a56d4f6def0906af5114db9f184de7908e686ddf84eb3d",
         intel: "9c2aefc11202cf481e8a09ae049bcfd160aa6cafc6237351ebfb96301a6abfc8"

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
    "~/Library/Preferences/net.java.openjdk.java.plist",
    "~/Library/Saved Application State/net.java.openjdk.java.savedState",
  ]
end
