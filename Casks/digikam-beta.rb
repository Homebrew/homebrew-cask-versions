cask 'digikam-beta' do
  version '6.0.0-beta3,20181228T124823'
  sha256 '4852602061b96368254431aaf0424e6cf5e8d5f00d8b77eca3953d18e18d3cd7'

  # files.kde.org/digikam was verified as official when first introduced to the cask
  url "https://files.kde.org/digikam/digiKam-#{version.before_comma}-#{version.after_comma}-MacOS-x86-64.pkg"
  appcast 'https://files.kde.org/digikam/'
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  conflicts_with cask: 'digikam'

  pkg "digiKam-#{version.before_comma}-#{version.after_comma}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam',
            delete:  '/Applications/digiKam/'
end
