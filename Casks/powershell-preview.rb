cask 'powershell-preview' do
  version '7.1.0-preview.2'
  sha256 'bfc8d7e217d13c524bc55b415c56f5539a2a5d8ed1efec602fee664c69703ed0'

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-x64.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom'
  name 'PowerShell'
  homepage 'https://github.com/PowerShell/PowerShell'

  depends_on formula: 'openssl'
  depends_on macos: '>= :sierra'

  pkg "powershell-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.powershell-preview'

  zap trash: [
               '~/.cache/powershell',
               '~/.config/PowerShell',
               '~/.local/share/powershell',
             ],
      rmdir: [
               '~/.cache',
               '~/.config',
               '~/.local/share',
               '~/.local',
             ]
end
