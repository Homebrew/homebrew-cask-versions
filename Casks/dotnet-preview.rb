cask "dotnet-preview" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "8.0.0-preview.1.23110.8,b2dfdd00-3ec3-4834-8790-daf3729388b7,fbcd513ad80edeed216a573706b31682"
    sha256 "ba1e39e56655f05dbf7c8ce08b1588b762ba1a2bc3df314cb9bfb7690a63ebc5"
  end
  on_arm do
    version "8.0.0-preview.2.23128.3,e6a7dd4d-46c5-4ad2-9512-e2759a6796fe,f4b996a2a5c33c548d03b80d5f5226a2"
    sha256 "3fd3ca03e202aaccec79c71d05f59faa22c0ba57d754e4accea18577c879d4d2"
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
