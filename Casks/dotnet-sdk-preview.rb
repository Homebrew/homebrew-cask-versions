cask "dotnet-sdk-preview" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "7.0.100-preview.7.22377.5,c4688e7c-6076-4e7c-bc8d-99ff138f91ce,059f21d41a3e06aeba8ef02d465887ab"
    sha256 "d37cd53a737ff1c05310e3e71dcee260b17196476b9c8c4bfa5bb3ac8b6d06a9"
  end
  on_arm do
    version "7.0.100-preview.7.22377.5,064356b7-bf90-4c32-bfa9-f5acad1b24fb,dafa5b5f0b7c57d851f5af4d78db2f61"
    sha256 "dd2cac1674c8208c9bfe9735833d18cabd57e116b998133c14e1eb3bd7251816"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv[1]}/#{version.csv[2]}/dotnet-sdk-#{version.csv[0]}-osx-#{arch}.pkg"
  name ".NET SDK"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  livecheck do
    url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-sdk-v?(.+)-osx-#{arch}\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]},#{match[1]}"
      end
    end
  end

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet-preview",
  ], formula: "dotnet"
  depends_on macos: ">= :mojave"

  pkg "dotnet-sdk-#{version.csv[0]}-osx-#{arch}.pkg"
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
