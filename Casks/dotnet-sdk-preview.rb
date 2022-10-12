cask "dotnet-sdk-preview" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "7.0.100-rc.2.22477.23,f0721581-70fc-4a85-8f23-80312db2e709,67f5f1c05bc04e467ab773eac60d43c9"
    sha256 "94f7ae20feaae4b6bc6e0643b839ea2bfb6f84beacc2dadcb72bbb276da350c0"
  end
  on_arm do
    version "7.0.100-rc.2.22477.23,98cb9882-cba6-436a-98b5-a546577c557e,5172040c5017f00f78abd6a33cc4dee9"
    sha256 "2898147037fe1945b9e18f1174c3b1094fec61aa15495d98c9f28de62ea63aba"
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
