cask "dotnet-sdk-preview" do
  if Hardware::CPU.intel?
    version "6.0.100-preview.7.21379.14,9e02abfd-b421-4c43-8541-482f037ed19c:f61bd4f35c444710016db8b5a7206a97"
    sha256 "72d04ec37d305be4d45b38d17f242c3fc9f21abf7a24c3a23284c05c7f7aa6ea"

    url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-sdk-#{version.before_comma}-osx-x64.pkg"
    pkg "dotnet-sdk-#{version.before_comma}-osx-x64.pkg"

    livecheck do
      url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
      strategy :page_match do |page|
        page.scan(%r{/download/pr/([^/]+)/([^/]+)/dotnet-sdk-v?(.+)-osx-x64\.pkg}i).map do |match|
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
      strategy :page_match do |page|
        page.scan(%r{/download/pr/([^/]+)/([^/]+)/dotnet-sdk-v?(.+)-osx-arm64\.pkg}i).map do |match|
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
