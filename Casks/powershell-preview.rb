cask "powershell-preview" do
  version "7.2.0-preview.2"
  sha256 "bbe8ca1ffe84dea2f20cf0c927238500565065233dc9ffcb950b9aeb744a97fc"

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
