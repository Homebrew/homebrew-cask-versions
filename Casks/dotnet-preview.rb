cask "dotnet-preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.0-preview.5.23280.8,99c39037-df94-4eb1-b76c-0112bdc08c3e,7b842415a04b9a86c2f84d97e694dccc"
    sha256 "ec6cdde5c0a065b2cccaf5aca1748305b2ffecf4283214ce25b0c523ec50da22"
  end
  on_intel do
    version "8.0.0-preview.5.23280.8,1bb1ad11-9477-490b-b85c-171525ca2fbb,b8afd518f97e57839d938376f4087a87"
    sha256 "ed2a4c580afd92c8464b1c99ad1958c8bf1c95b6b1846852273545d350976c8d"
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
