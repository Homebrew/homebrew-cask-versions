cask "powershell-preview" do
  version "7.2.0-preview.6"
  sha256 "ff0604eae1769afbf1a39303e4b2c107e833381099017037ebaf02dc6f7c788a"

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-x64.pkg"
  name "PowerShell"
  desc "Command-line shell and scripting language"
  homepage "https://github.com/PowerShell/PowerShell"

  livecheck do
    url :homepage
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*-(?:preview|rc)(?:\.\d+)?)$/)
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
        "~/.local/share",
        "~/.local",
      ]
end
