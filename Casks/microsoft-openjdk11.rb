cask "microsoft-openjdk11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.20"
  sha256 arm:   "4d48a27153fd64f93b6fa0bdac6ed7855e2dd03372ea1e8b35d85fbc671a2be4",
         intel: "98564371812341c04ec3821cf2e1b74d64da4e8b510de9c265628ec721296f60"

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
