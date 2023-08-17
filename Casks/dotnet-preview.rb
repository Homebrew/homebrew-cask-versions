cask "dotnet-preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.0-preview.7.23375.6,59dd490b-473f-4873-a578-83737d6d046f,a9a8221a2e141f7baa1f3489f7c20680"
    sha256 "aa5313c3c2d841ba70b425bbb53c54297f5057c62e4eb944fc193126ffcd9fba"
  end
  on_intel do
    version "8.0.0-preview.7.23375.6,2b3b8164-93df-4084-8337-48d0662cbc6c,4cf1b36a06950818f1e8d82c476b16c6"
    sha256 "da2455c4597941c6f3ce8f067efad472c1f228f0ac20e24036197eb7f0982608"
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
