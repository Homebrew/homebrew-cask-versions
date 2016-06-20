cask 'adobe-photoshop-lightroom441' do
  version '4.4.1'
  sha256 '6d703aa5ea0022141c88746829e80c60f1169d746022655937c4196a6ca35dad'

  url "http://download.adobe.com/pub/adobe/lightroom/mac/#{version.to_i}.x/Lightroom_#{version.to_i}_LS11_mac_#{version.gsub('.', '_')}.dmg"
  name 'Adobe Photoshop Lightroom'
  homepage 'https://www.adobe.com/products/photoshop-lightroom.html'
  license :commercial

  pkg "Adobe Photoshop Lightroom #{version.to_i}.pkg"

  uninstall pkgutil: "com.adobe.Lightroom#{version.to_i}",
            quit:    "com.adobe.Lightroom#{version.to_i}",
            delete:  "/Applications/Adobe Photoshop Lightroom #{version.to_i}.app"

  zap       delete: [
                      '~/Library/Application Support/Adobe/Lightroom',
                      "~/Library/Preferences/com.adobe.Lightroom#{version.to_i}.plist",
                    ]
end
