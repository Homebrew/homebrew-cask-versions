cask "dotnet-sdk-preview" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    version "6.0.100,14a45451-4cc9-48e1-af69-0aff75891d09:ff6e83986a2a9a535015fb3104a90a1b"
    sha256 "9203560506408d8f88774358b03cdcfcfa0495682fde6034b24f7ccaeddce2ef"
  else
    version "6.0.100-rc.2.21505.57,3336b6fe-1f40-4c66-a1ef-81cabd3df46c:dd56dc201e5c0a95b86f41c1cf36df17"
    sha256 "4db0bb52f7cd6cfd3969a8b24ea4d09b851a9d3243915798e3f3d0c48308370e"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-sdk-#{version.before_comma}-osx-#{arch}.pkg"
  name ".NET SDK"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  livecheck do
    url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-sdk-v?(.+)-osx-#{arch}\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]}:#{match[1]}"
      end
    end
  end

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet-preview",
  ]
  depends_on macos: ">= :mojave"

  pkg "dotnet-sdk-#{version.before_comma}-osx-#{arch}.pkg"
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
