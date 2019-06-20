cask 'microsoft-edge-dev' do
  version '77.0.189.3'
  sha256 '01edcdc6b4e7cf4a7f7a0a2b07686e858fb1af26b906836f95276a810b57fff4'

  # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdgeDev-#{version}.pkg"
  appcast 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/0409EDDV01-chk.xml'
  name 'Microsoft Edge Dev'
  homepage 'https://www.microsoftedgeinsider.com/'

  auto_updates true

  pkg "MicrosoftEdgeDev-#{version}.pkg"

  uninstall pkgutil: 'com.microsoft.Edge.Dev'
end
