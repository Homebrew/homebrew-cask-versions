class AdobeReaderFr < Cask
  url 'http://ardownload.adobe.com/pub/adobe/reader/mac/11.x/11.0.00/fr_FR/AdbeRdr11000_fr_FR.dmg'
  homepage 'http://get.adobe.com/fr/reader/'
  version '11.0.00'
  sha256 '5cc17f1f3ef83a351a78de352f0f538af1f6d2b4'
  install 'Adobe Reader XI Installer.pkg'
  uninstall :pkgutil => 'com.adobe.acrobat.reader.11000.*'
end
