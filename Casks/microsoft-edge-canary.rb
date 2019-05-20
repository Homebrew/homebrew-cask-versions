cask 'microsoft-edge-canary' do
  version '76.0.161.0'
  sha256 'e56952a821f1a2d88e4243c2e02ac42e00eac0ceaa66f80f68feec7007d8a0c1'

  # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdgeCanary-#{version}.pkg"
  name 'Microsoft Edge Canary'
  homepage 'https://www.microsoftedgeinsider.com/'

  auto_updates true  

  pkg "MicrosoftEdgeCanary-#{version}.pkg"

  uninstall pkgutil: 'com.microsoft.Edge.Canary'
end
