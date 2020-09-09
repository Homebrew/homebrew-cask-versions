cask "powershell-preview" do
  version "7.1.0-preview.7"
  sha256 "b6156efcce319e89743f47cce21730345dccf79c5dc57e5c6c7137c8d4db4ead"

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
