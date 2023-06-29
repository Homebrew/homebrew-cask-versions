cask "dotnet-sdk-preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.100-preview.5.23303.2,c4f8255b-c638-4977-a407-b5f8e666ca22,a55fa273c57a3f754f9a6bfdb7132e39"
    sha256 "0408867832a3c23a9af53f404aec35a478e756123ec4ac6fb3d2b09d2972b7e3"
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
