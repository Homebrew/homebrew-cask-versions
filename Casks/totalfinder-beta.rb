cask 'totalfinder-beta' do
  version '1.7.10'
  sha256 '18bc9083a556063a6650f7a18cfd5a763139383c89d8fef7356831e53812807e'

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
