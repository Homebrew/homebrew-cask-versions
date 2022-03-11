cask "microsoft-openjdk11" do
  version "11.0.14.1,1-31205"
  sha256 "257d8cb3124eaa71614fac0b9ddb48753d3e481bfa1f3ed49dd7827d102fd12e"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version.csv.first}_#{version.csv.second}-macOS-x64.pkg",
      verified: "aka.ms/download-jdk/"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(11(?:\.\d+)+)[._-]macOS[._-]x64\.pkg}i)
  end

  pkg "microsoft-jdk-#{version.csv.first}_#{version.csv.second}-macOS-x64.pkg"

  uninstall pkgutil: "com.microsoft.#{version.csv.first}_#{version.csv.second}.jdk"
end
