cask :v1 => 'totalfinder-beta' do
  version '1.7.1'
  sha256 '32a5c8be84ef5bc305e582085f455b09c502fd6e447c4fdb08fba0eba9cc51de'

  url "http://downloads.binaryage.com/TotalFinder-#{version}.dmg"
  homepage 'http://totalfinder.binaryage.com/beta-changes'
  license :commercial

  pkg 'TotalFinder.pkg'
  uninstall :pkgutil => 'com.binaryage.pkg.totalfinder.app',
            :script => {
                        :executable => 'TotalFinder Uninstaller.app/Contents/MacOS/TotalFinder Uninstaller',
                        :args => %w[--headless],
                       }
end
