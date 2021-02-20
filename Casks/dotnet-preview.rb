cask "dotnet-preview" do
  version "6.0.0-preview.1.21102.12,62a705de-f063-4dc1-912b-6727ab3295cd:a3845e7371b03fa813384d0e16ebaa20"
  sha256 "cbe266ecdb0c6ec9717b3f73392671bde2465d12be5ce7d3a9e895dcb1586851"

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
  appcast "https://dotnet.microsoft.com/download/dotnet/#{version.major_minor}"
  name ".NET Runtime"
  desc "Preview release of the .NET Runtime"
  homepage "https://dotnet.microsoft.com/"

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
