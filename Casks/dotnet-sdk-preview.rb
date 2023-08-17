cask "dotnet-sdk-preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.100-preview.7.23376.3,bf548fae-7cf9-4fe3-8414-a70134685591,00af1befa829b764d78a8a83b5b652f0"
    sha256 "a217fe3d87533c146adbc5b41faa856bfff3ca176a86044c077f159a31b64ceb"
  end
  on_intel do
    version "8.0.100-preview.7.23376.3,392f3d3a-fdb0-4c32-a89a-da83a9e48611,ff71d6b20895b10a909986a92b5ed011"
    sha256 "46c591243d4a56f39b42113137f06f52b0cd0074cefffd922986941385bf4ae6"
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
