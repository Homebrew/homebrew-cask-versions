cask "dotnet-preview" do
  if Hardware::CPU.intel?
    version "6.0.0-preview.2.21154.6,51cb50a7-c2e6-49f9-a172-e1dd0dd0f40f:d3cd57a2fc52ff8e85d8f52ba27f2e2f"
    sha256 "286ef6a223d8614df4df45e0e167ad68cd2b69de838b809bc3eb5ce0963e244b"
    arch_version="x64"
  else
    version "6.0.0-preview.2.21154.6,3de6add5-a77c-4621-bf77-1722073ac0a7:4535dfffd67bbbf59b06c1b59c0b2f29"
    sha256 "a05e828c99371b137434987ca7ef44a9ff0b36dc390fb5af9754075872b9506e"
    arch_version="arm64"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-#{arch_version}.pkg"
  appcast "https://dotnet.microsoft.com/download/dotnet/#{version.major_minor}"
  name ".NET Runtime"
  desc "Preview release of the .NET Runtime"
  homepage "https://dotnet.microsoft.com/"

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet-sdk-preview",
  ]
  depends_on macos: ">= :sierra"

  pkg "dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
