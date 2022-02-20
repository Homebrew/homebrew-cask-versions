cask "dotnet-preview" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    version "7.0.0-preview.1.22076.8,db7f0e7c-1565-4b19-ac46-28e6e2bc8d45,3dc432a183bb535ac690af8abd2b45f7"
    sha256 "e4b066937d0d3a76e5296bcfac4708821bf3ad370e7776fcb10f8b5cc0cca950"
  else
    version "7.0.0-preview.1.22076.8,17b7ed90-2cac-4a18-9d04-787fb76a0175/52773df7c2c4982728cc153111c8a0aa"
    sha256 "1910170a8f4c1223a3b7a5cbcbdfb4763e7897e57570d4dd74ece98f08203814"
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
