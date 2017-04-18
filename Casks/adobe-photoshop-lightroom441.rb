cask 'adobe-photoshop-lightroom441' do
  version '4.4.1'
  sha256 '6d703aa5ea0022141c88746829e80c60f1169d746022655937c4196a6ca35dad'

  url "http://download.adobe.com/pub/adobe/lightroom/mac/#{version.major}.x/Lightroom_#{version.major}_LS11_mac_#{version.dots_to_underscores}.dmg"
  name 'Adobe Photoshop Lightroom'
  homepage 'https://www.adobe.com/products/photoshop-lightroom.html'

  pkg "Adobe Photoshop Lightroom #{version.major}.pkg", allow_untrusted: true

  uninstall pkgutil: "com.adobe.Lightroom#{version.major}",
            quit:    "com.adobe.Lightroom#{version.major}"

  zap       delete: [
                      '~/Library/Application Support/Adobe/Lightroom',
                      "~/Library/Preferences/com.adobe.Lightroom#{version.major}.plist",
                    ]
end
