cask 'microsoft-edge-dev' do
  version '78.0.244.0'
  sha256 'a37a7dad8491e757db6cec680cebdfbf6669845d0f2dca1040277d892c198627'

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
