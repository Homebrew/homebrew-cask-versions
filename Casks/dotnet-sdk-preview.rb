cask "dotnet-sdk-preview" do
  arch arm: "arm64", intel: "x64"

  on_arm dod
    version "8.0.100-preview.3.23178.7,3fa4c32e-6c76-4055-b6ea-e9dee2785da9,117d47e8b1cbbaa762390b30329e935f"
    sha256 "aab199305069727ed7a3c13033d26a04249e41eb98a909d60caeaa0cda6d32fa"
  end
  on_intel do
    version "8.0.100-preview.3.23178.7,199b3c2b-0840-4c91-ab2e-5d5a740d1f07,f8669fcc04fc2a171121cfc7764f299c"
    sha256 "ac7549f4e84f4c2ad0dedfb603044bc16821f56204ca7ac1faaa083385db9adf"
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
