cask "dotnet-sdk-preview" do
  if Hardware::CPU.intel?
    version "6.0.100-rc.2.21505.57,c5dd0b51-0059-442b-9456-b03cb7ee277d:6d78d81224db93247ff6ae0bdb929712"
    sha256 "9e6af3188da140b42919879ec38b9d7da9607fa65e2f6581be3ca31ece27ef03"

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
    version "6.0.100-rc.2.21505.57,3336b6fe-1f40-4c66-a1ef-81cabd3df46c:dd56dc201e5c0a95b86f41c1cf36df17"
    sha256 "4db0bb52f7cd6cfd3969a8b24ea4d09b851a9d3243915798e3f3d0c48308370e"

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
