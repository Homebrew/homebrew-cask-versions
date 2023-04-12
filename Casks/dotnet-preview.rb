cask "dotnet-preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.0-preview.2.23128.3,e6a7dd4d-46c5-4ad2-9512-e2759a6796fe,f4b996a2a5c33c548d03b80d5f5226a2"
    sha256 "3fd3ca03e202aaccec79c71d05f59faa22c0ba57d754e4accea18577c879d4d2"
  end
  on_intel do
    version "8.0.0-preview.3.23174.8,018cf078-39d9-450f-a8fe-d8d84418e220,0b2e9114fa3cb3201f5a8ec39f7c2b2c"
    sha256 "c4cdf5066398f37b5c17a7e93745f4b28ca2fdd6f66316292cfcc9815e6c157c"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  name ".Net Runtime"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  livecheck do
    url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-runtime-v?(.+)-osx-#{arch}\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]},#{match[1]}"
      end
    end
  end

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet-sdk-preview",
  ], formula: "dotnet"
  depends_on macos: ">= :mojave"

  pkg "dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
