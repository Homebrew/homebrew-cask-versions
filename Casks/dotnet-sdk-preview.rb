cask "dotnet-sdk-preview" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "8.0.100-preview.1.23115.2,993e8460-176f-4669-9337-b4725c355146,f903c2ff758fee42121da67772dfd0c5"
    sha256 "14c99125c3862ef2fad7de863b1f3a98738ae1220d3e6acaaee579ab8ef514e3"
  end
  on_arm do
    version "8.0.100-preview.1.23115.2,b54698c3-d371-492f-b9f1-998a60136156,3ff37050db93fd5fd5ab86befe42bb08"
    sha256 "19326fe8bd323239cd149232defaccf0d8cf51f765e9eb0f36c274bacf3b3cbf"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv[1]}/#{version.csv[2]}/dotnet-sdk-#{version.csv[0]}-osx-#{arch}.pkg"
  name ".NET SDK"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  livecheck do
    url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-sdk-v?(.+)-osx-#{arch}\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]},#{match[1]}"
      end
    end
  end

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet-preview",
  ], formula: "dotnet"
  depends_on macos: ">= :mojave"

  pkg "dotnet-sdk-#{version.csv[0]}-osx-#{arch}.pkg"
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
