cask 'microsoft-edge-dev' do
  version '81.0.416.6'
  sha256 '4cb67a3fb373df7f66c7d10e922832d02c3cf9f6c087c73bdd03e1b267a0255e'

  # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdgeDev-#{version}.pkg"
  appcast 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/0409EDDV01-chk.xml',
          configuration: "#{version.major}.#{version.patch}"
  name 'Microsoft Edge Dev'
  homepage 'https://www.microsoftedgeinsider.com/'

  auto_updates true

  pkg "MicrosoftEdgeDev-#{version}.pkg"

  uninstall pkgutil: 'com.microsoft.edgemac.Dev',
            rmdir:   '/Library/Application Support/Microsoft'

  zap launchctl: [
                   'com.microsoft.autoupdate.helper',
                   'com.microsoft.update.agent',
                 ],
      pkgutil:   'com.microsoft.package.Microsoft_AutoUpdate.app',
      delete:    '/Library/PrivilegedHelperTools/com.microsoft.autoupdate.helper',
      trash:     [
                   '~/Library/Preferences/com.microsoft.edgemac.Dev.plist',
                   '/Library/Application Support/Microsoft',
                   '~/Library/Application Support/Microsoft Edge Dev',
                 ]
end
