cask "dotnet-sdk-preview" do
  if Hardware::CPU.intel?
    version "6.0.100-rc.1.21463.6,4ca60318-1905-4b5a-90ad-060bc5357857:a129beb791b78a034e5e6453273dcd84"
    sha256 "eca46d6b5d3249bf25e787651f67e642eb46e5ce554fd4e0c73058fd383faa3d"

    url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-sdk-#{version.before_comma}-osx-x64.pkg"
    pkg "dotnet-sdk-#{version.before_comma}-osx-x64.pkg"

    livecheck do
      url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
      regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-sdk-v?(.+)-osx-x64\.pkg}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map do |match|
          "#{match[2]},#{match[0]}:#{match[1]}"
        end
      end
    end
  else
    version "6.0.100-preview.7.21379.14,01d92318-8db9-40f2-b9b8-20586d7e8f40:37d13083ff512e2b10bc2fd0fdbb9358"
    sha256 "85f45dee8644e7cea3cb683925bc3374afb763443f3801697f8f58fc47f66016"

    url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-sdk-#{version.before_comma}-osx-arm64.pkg"
    pkg "dotnet-sdk-#{version.before_comma}-osx-arm64.pkg"

    livecheck do
      url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
      regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-sdk-v?(.+)-osx-arm64\.pkg}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map do |match|
          "#{match[2]},#{match[0]}:#{match[1]}"
        end
      end
    end
  end

  name ".NET SDK"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet-preview",
  ]
  depends_on macos: ">= :mojave"

  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: [
    "com.microsoft.dotnet.*",
    "com.microsoft.netstandard.pack.targeting.*",
  ],
            delete:  [
              "/etc/paths.d/dotnet",
              "/etc/paths.d/dotnet-cli-tools",
            ]

  zap trash: [
    "~/.dotnet",
    "~/.nuget",
  ]
end
