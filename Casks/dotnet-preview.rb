cask "dotnet-preview" do
  if Hardware::CPU.intel?
    version "6.0.0-preview.4.21253.7,bab80210-ac54-44fa-bf41-7474c6371cf2:eadcd657b93e347d08bc33c59bd60835"
    sha256 "b317da273841790cd6ca3eaa6c4d95d7afe22831b27808bb956c1d48fc00c271"

    url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
    pkg "dotnet-runtime-#{version.before_comma}-osx-x64.pkg"

    livecheck do
      url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
      strategy :page_match do |page|
        page.scan(%r{/download/pr/([^/]+)/([^/]+)/dotnet-runtime-v?(.+)-osx-x64\.pkg}i).map do |match|
          "#{match[2]},#{match[0]}:#{match[1]}"
        end
      end
    end
  else
    version "6.0.0-preview.4.21253.7,fb84fa05-f898-4fa3-b6af-49dd6218fe2a:208ef70454ddebee075044b8e924200f"
    sha256 "d1e480006f1e447620103a0a9feff5cf874163cfb3d3c5965b392a7b53a63848"

    url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-arm64.pkg"
    pkg "dotnet-runtime-#{version.before_comma}-osx-arm64.pkg"

    livecheck do
      url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
      strategy :page_match do |page|
        page.scan(%r{/download/pr/([^/]+)/([^/]+)/dotnet-runtime-v?(.+)-osx-arm64\.pkg}i).map do |match|
          "#{match[2]},#{match[0]}:#{match[1]}"
        end
      end
    end
  end

  name ".Net Runtime"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet-sdk-preview",
  ]
  depends_on macos: ">= :mojave"

  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
