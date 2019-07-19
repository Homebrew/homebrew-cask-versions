cask 'microsoft-edge-dev' do
  version '77.0.218.4'
  sha256 '95d32cc3bdda8c169bee89db1f6f91ec99d72c4a6b1a429caf066d928971eb54'

  # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdgeDev-#{version}.pkg"
  appcast 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/0409EDDV01-chk.xml',
          configuration: "#{version.major}.#{version.patch}"
  name 'Microsoft Edge Dev'
  homepage 'https://www.microsoftedgeinsider.com/'

  auto_updates true

  pkg "MicrosoftEdgeDev-#{version}.pkg"

  uninstall pkgutil: 'com.microsoft.Edge.Dev'
end
