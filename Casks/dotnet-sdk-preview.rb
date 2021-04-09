cask "dotnet-sdk-preview" do
  if Hardware::CPU.intel?
    version "6.0.100-preview.3.21202.5,fc5fdd1f-fb4c-4b88-a507-158204030320:98497ef248883404ff5b0604dda944fb"
    sha256 "02ccd2669e2e27dbfeb23ae526432bfab2076636440b80483edb1a6c250690f6"

    url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-sdk-#{version.before_comma}-osx-x64.pkg"
    pkg "dotnet-sdk-#{version.before_comma}-osx-x64.pkg"
  else
    version "6.0.100-preview.3.21202.5,293e469c-7948-4fc9-9d10-d5d39662e19d:1ae28ceb225f19d9aa922ffa3febb872"
    sha256 "ccdbc6e0a75da77c1ed72975b2ae4099669454695a3396d4ba01a73525fbac38"

    url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-sdk-#{version.before_comma}-osx-arm64.pkg"
    pkg "dotnet-sdk-#{version.before_comma}-osx-arm64.pkg"
  end

  appcast "https://dotnet.microsoft.com/download/dotnet/#{version.major_minor}"
  name ".NET SDK"
  desc "Preview release of the .NET SDK"
  homepage "https://dotnet.microsoft.com/"

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet-preview",
  ]
  depends_on macos: ">= :sierra"

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
