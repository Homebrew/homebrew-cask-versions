cask "dotnet-sdk-preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.100-preview.4.23260.5,593bd437-c6f3-412c-9cb0-206addab56d3,330ac8f331f7c9b9e8860669c767cb43"
    sha256 "1422e73da826f1d06ca5125f3c9d697dbf4ab5dd74e14083ce2f528be1cd5898"
  end
  on_intel do
    version "8.0.100-preview.5.23303.2,32b6e063-c6c3-427c-a734-e8fcf368c2a9,2abc4575ecd422aae6bc2bfe8c569be4"
    sha256 "7bdbd173eae97361a33306e06ae98f2db03f51c2c9311720ee421a576c217bc8"
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
