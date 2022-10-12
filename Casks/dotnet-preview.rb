cask "dotnet-preview" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "7.0.0-rc.2.22472.3,c90e3ba9-00e3-451a-b785-ac1b0abe3e06,9238bb73aa338eda296d9edd909f341e"
    sha256 "6ca6feb2fc306988875f12649d48016b54c4210c8d0bf955063d560ebee07bb7"
  end
  on_arm do
    version "7.0.0-rc.2.22472.3,441979d9-1ec7-4065-9aa3-70ed3cb02c78,5e8bebf1c0c48ae8a55265c9d645c254"
    sha256 "73b99f2bf166c27924bbd5a8c0dde37584b599369abce3ea7423f195b4096454"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv[1]}/#{version.csv[2]}/dotnet-runtime-#{version.csv[0]}-osx-#{arch}.pkg"
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

  pkg "dotnet-runtime-#{version.csv[0]}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
