cask "dotnet-sdk-preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.100-preview.3.23178.7,3fa4c32e-6c76-4055-b6ea-e9dee2785da9,117d47e8b1cbbaa762390b30329e935f"
    sha256 "aab199305069727ed7a3c13033d26a04249e41eb98a909d60caeaa0cda6d32fa"
  end
  on_intel do
    version "8.0.100-preview.4.23260.5,c06279c7-f65e-4da0-bca8-5ae18a652e75,f645c5e53f6d3d51120b1e62cec2cc78"
    sha256 "a265f753fa1656144a2f05a7946611f726202d6d1e436825001a76cf8e2858e4"
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
