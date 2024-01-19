cask "powershell-preview" do
  arch arm: "arm64", intel: "x64"

  version "7.5.0-preview.1"
  sha256 arm:   "c24c1a53d0f751adc98a428d1479190d895b67d09c8b274940ab6f39aa4dc482",
         intel: "5d46b6861c732f281dd8ae39479ba3e21bb2bc96fbbc1c0c9241d4ebe877140a"

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-#{arch}.pkg"
  name "PowerShell"
  desc "Command-line shell and scripting language"
  homepage "https://github.com/PowerShell/PowerShell"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[_-](?:preview|rc)(?:\.\d+)?)$/i)
  end

  depends_on formula: "openssl"
  depends_on macos: ">= :mojave"

  pkg "powershell-#{version}-osx-#{arch}.pkg"

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

  caveats <<~EOS
    To use Homebrew in PowerShell, set:
      Add-Content -Path $PROFILE.CurrentUserAllHosts -Value '$(#{HOMEBREW_PREFIX}/bin/brew shellenv) | Invoke-Expression'
  EOS
end
