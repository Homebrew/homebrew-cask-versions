cask "powershell-preview" do
  version "7.2.0-rc.1"
  sha256 "34b570295af25d393a79f5882f32daf4f9f9ab81a9cc9d1936fd458e24aeb31f"

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-x64.pkg"
  name "PowerShell"
  desc "Command-line shell and scripting language"
  homepage "https://github.com/PowerShell/PowerShell"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[_-](?:preview|rc)(?:\.\d+)?)$/i)
  end

  depends_on formula: "openssl"
  depends_on macos: ">= :high_sierra"

  pkg "powershell-#{version}-osx-x64.pkg"

  uninstall pkgutil: "com.microsoft.powershell-preview"

  zap trash: [
    "~/.cache/powershell",
    "~/.config/PowerShell",
    "~/.local/share/powershell",
  ],
      rmdir: [
        "~/.cache",
        "~/.config",
        "~/.local",
        "~/.local/share",
      ]

   caveats "If PowerShell is used as a login shell, an entry must be added to the " \
           "PowerShell profile file to use Homebrew. The easiest way to do this is to run " \
           "the following command once within a PowerShell session:" \
           "" \
           "Add-Content -Path $PROFILE -Value '$(if (Test-Path -PathType Leaf /opt/homebrew/bin/brew) {/opt/homebrew/bin/brew shellenv} elseif (Test-Path -PathType Leaf /usr/local/bin/brew) {/usr/local/bin/brew shellenv}) | Invoke-Expression -ErrorAction SilentlyContinue'"
end
