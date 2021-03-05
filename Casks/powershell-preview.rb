cask "powershell-preview" do
  version "7.2.0-preview.3"
  sha256 "90003e3f76056a0b40ecc978a123db29d48726509dce1d60707ef2f9d8c0a793"

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
