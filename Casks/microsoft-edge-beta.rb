cask 'microsoft-edge-beta' do
  version '79.0.309.43'
  sha256 '812c497d90692c4c6967e37ff7d39f7896de4cf2cfd905c56258da64fc53ff33'

  # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdgeBeta-#{version}.pkg"
  appcast 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/0409EDBT01-chk.xml',
          configuration: "#{version.major}.#{version.patch}"
  name 'Microsoft Edge Beta'
  homepage 'https://www.microsoftedgeinsider.com/'

  auto_updates true

  pkg "MicrosoftEdgeBeta-#{version}.pkg"

  uninstall pkgutil: 'com.microsoft.edgemac.Beta',
            rmdir:   '/Library/Application Support/Microsoft'

  zap launchctl: [
                   'com.microsoft.autoupdate.helper',
                   'com.microsoft.update.agent',
                 ],
      pkgutil:   'com.microsoft.package.Microsoft_AutoUpdate.app',
      delete:    '/Library/PrivilegedHelperTools/com.microsoft.autoupdate.helper',
      trash:     [
                   '~/Library/Preferences/com.microsoft.edgemac.Beta.plist',
                   '/Library/Application Support/Microsoft',
                   '~/Library/Application Support/Microsoft Edge Beta',
                 ]
end
