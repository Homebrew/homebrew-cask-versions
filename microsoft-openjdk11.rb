cask "microsoft-openjdk11" do
  version "11.0.11.9.1"
  sha256 "3f378080a74bce8687a36978d4093b7a585011a527d84e867aa990a9b69e0301"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macOS-x64.pkg",
      verified: "https://aka.ms/download-jdk/"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    strategy :page_match
    regex(%r{href=.*?/microsoft-jdk-(\d+(?:\.\d+)*)-macOS-x64.pkg}i)
  end

  pkg "microsoft-jdk-#{version}-macOS-x64.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"
end
