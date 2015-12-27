cask 'adobe-reader-fr' do
  version '11.0.00'
  sha256 '528b3fae5b712d3bb115c5ca47e507eaa2f34008b6c8a1aab542aac8770b7f77'

  url "http://ardownload.adobe.com/pub/adobe/reader/mac/#{version.to_i}.x/#{version}/fr_FR/AdbeRdr#{version.gsub('.', '')}_fr_FR.dmg"
  homepage 'https://www.adobe.com/fr/products/reader.html'
  license :unknown

  pkg 'Adobe Reader XI Installer.pkg'
  uninstall :pkgutil => "com.adobe.acrobat.reader.#{version.gsub('.', '')}.*",
            :delete => '/Applications/Adobe Reader.app'
  zap       :delete => [
                        "~/Library/Application Support/Adobe/Acrobat/#{version.sub(%r{(\d+)\.(\d+)\.*},'\1.\2')}",
                        '~/Library/Preferences/com.adobe.Reader.plist',
                       ]
end
