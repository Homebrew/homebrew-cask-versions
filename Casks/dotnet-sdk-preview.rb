cask "dotnet-sdk-preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.100-rc.1.23455.8,ba6a5740-80e6-4e04-b0a9-efd8c9be47a4,5717bbfe8433f568eb2d00cccfd9ce8d"
    sha256 "12c738f5eb4979625a582f10fbdb6f86c779ecef77d4d319734bf2730e18dc79"
  end
  on_intel do
    version "8.0.100-rc.1.23455.8,b3ff305d-4ba2-4af6-b738-a649150b34b8,269c95893779d176550832a43cb180d8"
    sha256 "4373a54b1ac61bf08dddfd276a9dd45a3874856c486c7eb2d8d13a74dd8e51c7"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/dotnet-sdk-#{version.csv.first}-osx-#{arch}.pkg"
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

  pkg "dotnet-sdk-#{version.csv.first}-osx-#{arch}.pkg"
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
