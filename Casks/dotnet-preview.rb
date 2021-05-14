cask "dotnet-preview" do
  if Hardware::CPU.intel?
    version "6.0.0-preview.3.21201.4,e738a530-73a3-489a-8537-0b33e0084c38:c3c8697484a961efb8240ccddc5d22b3"
    sha256 "7f0c859d1b1aff2c09215d5f6afb27a112edc778fbbf51ef498d6bc8d2a7a4fb"

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
    version "6.0.0-preview.3.21201.4,668c384c-9568-4261-9897-9d76a3d27e6f:60d295f764d49be02666ee1b46658a2e"
    sha256 "709e2ef53d21f690fb0071655d90f31f2c3daec7d65beb65bd6c9e21893e481d"

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
