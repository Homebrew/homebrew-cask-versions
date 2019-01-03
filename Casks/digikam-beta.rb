cask 'digikam-beta' do
  version '5.9.0-01'
  sha256 'd3b76fcabfbd281289702d2c3a1f6ab63cda3b8f45cc54e642fee329cb0f197c  '

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
