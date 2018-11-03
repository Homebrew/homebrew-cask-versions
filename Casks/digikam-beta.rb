cask 'digikam-beta' do
  version '6.0.0-beta2'
  sha256 'e175052a9a4a301a85556975eb327d13703cd35ae44421bed68eec0b4abd13b7'

  # download.kde.org/unstable/digikam was verified as official when first introduced to the cask
  url "https://download.kde.org/unstable/digikam/digiKam-#{version}-MacOS-x86-64.pkg"
  appcast 'https://files.kde.org/digikam/'
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  conflicts_with cask: 'digikam'

  pkg "digikam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam',
            delete:  '/Applications/digiKam/'
end
