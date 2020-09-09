cask "dotnet-preview" do
  version "5.0.0-preview.8.20407.11,67249b40-ac76-4628-a5b7-e7086e4d1444:ab8ed91c5e9080d4a7bffcb8f901d89e"
  sha256 "71c0dea42411693f90b5da450f1b59554329776a8cc8bac68fb8005c2432cc00"

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
  appcast "https://dotnet.microsoft.com/download/dotnet-core"
  name ".Net Core Runtime"
  homepage "https://www.microsoft.com/net/core#macos"

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet-sdk-preview",
  ]
  depends_on macos: ">= :sierra"

  pkg "dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
