cask "dotnet-sdk-preview" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    version "7.0.100-preview.2.22153.17,f6ec71c8-fc91-49f4-8409-f36e5b58902a,3d3ccb4dcaf0823d55ecd470854cb2c8"
    sha256 "b8ccf8528f6314fd2520550b8eb3bb3e503d0f74114a7002d64832428542d256"
  else
    version "7.0.100-preview.1.22110.4,8a5292b1-3f04-4766-8551-690c87688734,3928534aafadd1b556a1526d45d0dc8c"
    sha256 "e7dc99973176ae18f5e0613aba0df3a8a51ccf54dc474fb1862311f65ac75d7e"
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
