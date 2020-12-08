cask "powershell-preview" do
  version "7.2.0-preview.1"
  sha256 "40b3f05c6866a5654d16ed17f719ca4f6ef3e9743c916d2e7468fe44cdaa85d6"

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-x64.pkg"
  appcast "https://github.com/PowerShell/PowerShell/releases.atom"
  name "PowerShell"
  homepage "https://github.com/PowerShell/PowerShell"

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
        "~/.local/share",
        "~/.local",
      ]
end
