cask "microsoft-openjdk11" do
  version "11.0.14.1_1-31204"
  sha256 "927d3e8f227c0523c6559a6fa6097b27e8775cb6bc021fa9c4e4eb63692e30b1"

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
