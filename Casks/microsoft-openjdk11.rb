cask "microsoft-openjdk11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.17"
  sha256 arm:   "4a12ba32832d19ca985005d1910b6f9aef15e95fa5d2096a76a0cf4ac4e5fb2b",
         intel: "0644c23cd0d665ff90d988c839be39d8a467305839c019aa32c837fdbb47cef5"

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
end
