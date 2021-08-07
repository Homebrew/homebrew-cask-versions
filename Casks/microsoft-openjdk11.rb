cask "microsoft-openjdk11" do
  version "11.0.12.7.1"
  sha256 "2cd77f46aba9c1bcfc80b9f402e04ba22d8d79f9ac87abb711f4d2a04f1cf8b1"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macOS-x64.pkg",
      verified: "aka.ms/download-jdk/"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(11(?:\.\d+)+)[._-]macOS[._-]x64\.pkg}i)
  end

  pkg "microsoft-jdk-#{version}-macOS-x64.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"
end
