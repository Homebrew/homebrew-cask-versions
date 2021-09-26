cask "dotnet-preview" do
  if Hardware::CPU.intel?
    version "6.0.0-rc.1.21451.13,a8608d51-2363-4352-9102-f76d360deeea:d1c289e36f88b8eaa2e1464ae11d25c9"
    sha256 "1d1bec479449df0229960c2faab768ad26fa30c3dd8d0877b979b15c206c0807"

    url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
    pkg "dotnet-runtime-#{version.before_comma}-osx-x64.pkg"

    livecheck do
      url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
      regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-runtime-v?(.+)-osx-x64\.pkg}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map do |match|
          "#{match[2]},#{match[0]}:#{match[1]}"
        end
      end
    end
  else
    version "6.0.0-preview.7.21377.19,291e415b-c521-45b9-b817-710c342d2eb8:d05ca09bec35d4fbb31a07d700e9f416"
    sha256 "014bfbbd8e93516ee6bb75aed532ce7f9e6d5673beac66444ae3c71e6fb562c7"

    url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-arm64.pkg"
    pkg "dotnet-runtime-#{version.before_comma}-osx-arm64.pkg"

    livecheck do
      url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
      regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-runtime-v?(.+)-osx-arm64\.pkg}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map do |match|
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
