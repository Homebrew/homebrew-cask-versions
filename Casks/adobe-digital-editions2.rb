cask 'adobe-digital-editions2' do
  version '2.0.1'
  sha256 'dcaec3e2cbb2faa7720a2ff06d13af4fe0433cdf991c76eeeed28cb0019b69c0'

  url 'http://download.adobe.com/pub/adobe/digitaleditions/ADE_2.0_Installer.dmg'
  name 'Adobe Digital Editions 2.0.1'
  homepage 'https://www.adobe.com/solutions/ebook/digital-editions.html'

  pkg 'Digital Editions 2.0 Installer.pkg', allow_untrusted: true

  uninstall pkgutil: 'com.adobe.adobedigitaleditions.app',
            delete:  '/Applications/Adobe Digital Editions.app'
end
