cask "dotnet-sdk-preview" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    version "6.0.101,83e6b9b3-a78e-4df7-b33f-78a38a1db0c7,b1641cad9024c212bafdd6273f3d5e19"
    sha256 "31414204e26119baf10eaa035ff1b30e98df1bd57c5d86800fd95c5a4b7caa20"
  else
    version "6.0.100-rc.2.21505.57,3336b6fe-1f40-4c66-a1ef-81cabd3df46c,dd56dc201e5c0a95b86f41c1cf36df17"
    sha256 "4db0bb52f7cd6cfd3969a8b24ea4d09b851a9d3243915798e3f3d0c48308370e"
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
  ]
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
