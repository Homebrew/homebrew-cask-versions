cask "dotnet-preview" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    version "6.0.0,03e62824-4061-45dc-8777-93e82205148d:81489074c065675bd713a9cbeb995bef"
    sha256 "fedbddb71e18d68279433e22326220225b3ee45209966fce818ac34349eefef4"
  else
    version "6.0.0-rc.2.21480.5,2ac2aeec-4262-41e1-9544-8fc21579952c:8bfe416a0ce0b43b354481cacaa57f35"
    sha256 "e2287e63599895c7560f609a176eb88d7a32096e18dde5c5f3f0c96bfd1cf09d"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-#{arch}.pkg"
  name ".Net Runtime"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  livecheck do
    url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-runtime-v?(.+)-osx-#{arch}\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]}:#{match[1]}"
      end
    end
  end

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet-sdk-preview",
  ]
  depends_on macos: ">= :mojave"

  pkg "dotnet-runtime-#{version.before_comma}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
