cask :v1 => 'totalfinder-beta' do
  version '1.7.3'
  sha256 '3a9ea45c2a4abdfd186ddb6a2363ee6037a9b2307de8bea475c63ff3116adfe9'

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
