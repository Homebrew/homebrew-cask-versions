cask 'digikam-beta' do
  version '6.0.0-beta1-20180831T072944'
  sha256 'd6a448833e2885f657ced3d3726b165c7454d86156c26e16bf3cb5def2dbdeb6'

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
