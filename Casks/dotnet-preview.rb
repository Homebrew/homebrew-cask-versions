cask "dotnet-preview" do
  if Hardware::CPU.intel?
    version "6.0.0-preview.5.21301.5,c326f2e1-10ee-482e-9871-5fb8de7f7777:dda8203d3b58e56efeca4a7248cdea67"
    sha256 "fce55b7b91142a3e8789d09d87ced7ae89345f5e110e5fd2ef77ddffb59891b2"

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
    version "6.0.0-preview.5.21301.5,59b1d539-c76f-493c-9f6e-18c953429084:4c7fafc6ab3f5f4927929b543d62bc81"
    sha256 "a9a510a957c1b219c9c5b499a05317a45f33c0346d5f44bfcde25e63a6356da8"

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
