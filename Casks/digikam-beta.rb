cask 'digikam-beta' do
  version '6.0.0-beta1-20181011T180655'
  sha256 'dd4b5409d751b344f766a89458720cf2964b6af669fb0af47bdd5acc018289b7'

  # kde.org/digikam was verified as official when first introduced to the cask
  url "https://files.kde.org/digikam/digiKam-#{version}-MacOS-x86-64.pkg"
  appcast 'https://files.kde.org/digikam/'
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  conflicts_with cask: 'digikam'

  pkg "digikam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam',
            delete:  '/Applications/digiKam/'
end
