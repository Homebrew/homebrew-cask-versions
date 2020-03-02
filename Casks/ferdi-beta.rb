cask 'ferdi-beta' do
  version '5.4.4-beta.2'
  sha256 '55ea0e901facb9bcca4986df8c8cf85ea19a08581549b514d7f0e8cf5fd4e4fb'

  # github.com/getferdi/ferdi was verified as official when first introduced to the cask
  url "https://github.com/getferdi/ferdi/releases/download/v#{version}/Ferdi-#{version}.dmg"
  appcast 'https://github.com/getferdi/ferdi/releases.atom'
  name 'Ferdi'
  homepage 'https://getferdi.com/'

  conflicts_with cask: 'ferdi'

  app 'Ferdi.app'

  uninstall quit:   'com.kytwb.ferdi',
            delete: '/Library/Logs/DiagnosticReports/Ferdi Helper_.*wakeups_resource.diag'

  zap trash: [
               '~/Library/Application Support/Caches/ferdi-updater',
               '~/Library/Application Support/Ferdi',
               '~/Library/Caches/com.kytwb.ferdi',
               '~/Library/Caches/com.kytwb.ferdi.ShipIt',
               '~/Library/Logs/Ferdi',
               '~/Library/Preferences/ByHost/com.kytwb.ferdi.ShipIt.*.plist',
               '~/Library/Preferences/com.electron.ferdi.helper.plist',
               '~/Library/Preferences/com.electron.ferdi.plist',
               '~/Library/Preferences/com.kytwb.ferdi.plist',
               '~/Library/Saved Application State/com.kytwb.ferdi.savedState',
             ]
end
