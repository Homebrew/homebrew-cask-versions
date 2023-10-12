cask "dotnet-preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.0-rc.2.23479.6,049d48f9-e924-424e-8555-87221458e1f9,ac1890c81c8e6c52a96329afce30c8e0"
    sha256 "7ac857f4fe6e8c222639736b9598a85f3501ca1348f6d1194ff122cac4b7c4d6"
  end
  on_intel do
    version "8.0.0-rc.2.23479.6,a1dd621a-97c9-4e6d-ad4f-3d257b9eb4c9,0b629b86765f30c694d727fec87225f7"
    sha256 "9793d42bfaf90da9291cf995c649f5f5bc6eec6891359851a9ec374ada27a934"
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
