cask "dotnet-sdk-preview" do
  version "5.0.100-rc.1.20452.10,288c8d33-c0e0-4ab2-a9c0-7278f4e2490f:68c2c7c6e1d971d29caa12302e9352cf"
  sha256 "02a4954e933ef9bb782940f44ae83f8506589acb5605408a8ce67ecbe8628135"

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-sdk-#{version.before_comma}-osx-x64.pkg"
  appcast "https://dotnet.microsoft.com/download/dotnet-core/#{version.major_minor}"
  name ".NET Core SDK"
  desc "Preview  relaase of the .NET Core SDK"
  homepage "https://www.microsoft.com/net/core#macos"

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet-preview",
  ]
  depends_on macos: ">= :sierra"

  pkg "dotnet-sdk-#{version.before_comma}-osx-x64.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: [
    "com.microsoft.dotnet.*",
    "com.microsoft.netstandard.pack.targeting.*",
  ],
            delete:  [
              "/etc/paths.d/dotnet",
              "/etc/paths.d/dotnet-cli-tools",
            ]

  zap trash: [
    "~/.dotnet",
    "~/.nuget",
  ]
end
