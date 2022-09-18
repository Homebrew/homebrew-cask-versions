cask "dotnet-preview" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "7.0.0-rc.1.22426.10,7138e084-facc-423c-9291-d42905daf0fe,4fd55041dab67a68fea19cfd3fc08c41"
    sha256 "7eb7a2aeef8ee693ca821d555ed36987e7a3397a562f87264148fcb739a7ddd0"
  end
  on_arm do
    version "7.0.0-preview.7.22375.6,b84c6db5-5c65-4d26-b705-0c3f5320d2fa,48b49ac04cc7929e05db6a76cd7cd621"
    sha256 "e3c7b2d4e324e18335e5fc514a67b9e0c2971cf2c8b92ca9d7617640bf8a5023"
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
