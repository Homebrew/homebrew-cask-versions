cask 'powershell-preview' do
    version '6.1.0-preview.3'
    sha256 '95efa9d091de87746f877814aee56d2ab8f25fddf596aba2653b1782dd2ba362'
  
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
  
    caveats <<~EOS
      A OpenSSL-backed libcurl with GSSAPI is required for custom handling
      of certificates and default credentials for web requests.
      This is rarely needed, but you can install it with
        brew install curl --with-openssl --with-gssapi
      See https://github.com/PowerShell/PowerShell/issues/5638
    EOS
  end
  