cask "microsoft-openjdk11" do
  arch arm: "aarch64", intel: "x64"

  version "11.0.18"
  sha256 arm:   "e0a3a25272f7ee97e56fb0b7a0deab40bfa04e8ec12aeb513bc24506d7c4570d",
         intel: "64eac50960406d3671936bc85d675a66fdcb54683075b54738d7ecffee41f20b"

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
