cask 'totalfinder-beta' do
  version '1.7.11'
  sha256 '1e5d0fd4dbfcb5626eee596ac368d7e419ac0533568892cf0baa3930d5801619'

  url "http://downloads.binaryage.com/TotalFinder-#{version}.dmg"
  name 'TotalFinder'
  homepage 'http://totalfinder.binaryage.com'
  license :commercial

  pkg 'TotalFinder.pkg'

  uninstall pkgutil: 'com.binaryage.pkg.totalfinder.app',
            script:  {
                       executable: 'TotalFinder Uninstaller.app/Contents/MacOS/TotalFinder Uninstaller',
                       args:       %w[--headless],
                     }
end
