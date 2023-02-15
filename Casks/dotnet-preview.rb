cask "dotnet-preview" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "7.0.3,3ad8dd15-8794-4b7a-98d5-c3fc767a5480,92f8400f3246f6a9d02649a408c14ba9"
    sha256 "d3e0fecd642c9957935674725a1188adb7fad34f8cdaaf05b4812ff53c948b6d"
  end
  on_arm do
    version "7.0.2,90889739-38b2-4a49-8c97-ee1884d703ae,9f3f6c2de5d357f1905fde9910300072"
    sha256 "07df1177dbf864e8ecfeecc3b46f87d088497a5f767e233d62b5599fa178713c"
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
