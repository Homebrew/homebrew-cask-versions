cask "dotnet-preview" do
  if Hardware::CPU.intel?
    version "6.0.0-preview.3.21201.4,e738a530-73a3-489a-8537-0b33e0084c38:c3c8697484a961efb8240ccddc5d22b3"
    sha256 "7f0c859d1b1aff2c09215d5f6afb27a112edc778fbbf51ef498d6bc8d2a7a4fb"

    url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
    pkg "dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
  else
    version "6.0.0-preview.3.21201.4,668c384c-9568-4261-9897-9d76a3d27e6f:60d295f764d49be02666ee1b46658a2e"
    sha256 "709e2ef53d21f690fb0071655d90f31f2c3daec7d65beb65bd6c9e21893e481d"

    url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-arm64.pkg"
    pkg "dotnet-runtime-#{version.before_comma}-osx-arm64.pkg"
  end

  name ".NET Runtime"
  desc "Preview release of the .NET Runtime"
  homepage "https://dotnet.microsoft.com/"

  livecheck do
    url "https://dotnet.microsoft.com/download/dotnet"
    strategy :page_match do |page|
      cpu = if Hardware::CPU.intel?
        "x64"
      else
        "arm64"
      end
      release = page[%r{<td>(\d+(?:\.\d+)*-(?:preview|rc)(?:\.\d+)*)</td>}i, 1]
      install_page = Net::HTTP.get(URI.parse("#{url}/thank-you/runtime-#{release}-macos-#{cpu}-installer"))
      match = install_page.match(%r{
        href=.*?
        /([0-9a-f]+(?:-[0-9a-f]+)*)
        /([0-9a-f]+)
        /dotnet-runtime-((\d+(?:\.\d+)*-(?:preview|rc)(?:\.\d+)*))-osx-#{cpu}\.pkg
      }ix)
      "#{match[3]},#{match[1]}:#{match[2]}"
    end
  end

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet-sdk-preview",
  ]
  depends_on macos: ">= :sierra"

  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
