cask "dotnet-preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.0-preview.3.23174.8,4d50ef46-86ee-4be2-bcf4-1d27ab4f2a21,29a3ab71de1327a7976e475290e11ca7"
    sha256 "c5d2b3098b111701ca8ead536abc29ec712d87076bbc00d43cf945e9c06b2758"
  end
  on_intel do
    version "8.0.0-preview.4.23259.5,b9f27a14-46ea-4213-ad1b-f31bb41d3ff3,f9512906f1127157f23bfe0d583fb347"
    sha256 "eaaadfbd883af2f6864e6a7fdd60099b21f59b71f252c2440d6e642ccca6f999"
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
