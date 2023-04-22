cask "microsoft-openjdk11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.19"
  sha256 arm:   "90f09324dd292277b8b4cf9b7b6dd744abd181154d40d484369cff1e7cd98647",
         intel: "8023a4e6df608a798146f0ff80bf1f9829d641c6d7a332a8cb21c0ce12e44d1f"

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
