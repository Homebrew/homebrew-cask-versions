cask 'powershell-preview' do
  version '7.1.0-preview.4'
  sha256 'abf09c6f17e48ebaf88df474e3e6136aef35155ec324a88d65a2be4bb5d2ef66'

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
