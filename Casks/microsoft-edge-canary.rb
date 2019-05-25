cask 'microsoft-edge-canary' do
  module Utils
    def self.file_version
      require 'open-uri'
      appcast = 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/0409EDCN01-chk.xml'
      appcast_version = URI(appcast.to_s).open.read.scan(%r{<string>(.*)<\/string>})[2][0].split('.')
      appcast_version[0] + '.0.' + appcast_version[1] + '.0'
    end
  end

  version Utils.file_version.to_s
  sha256 :no_check

  # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
  url do
    require 'open-uri'
    base_url = 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/'
    file = "MicrosoftEdgeCanary-#{Utils.file_version}.pkg"
    "#{base_url}#{file}"
  end
  name 'Microsoft Edge Canary'
  homepage 'https://www.microsoftedgeinsider.com/'

  pkg "MicrosoftEdgeCanary-#{Utils.file_version}.pkg"

  uninstall pkgutil: 'com.microsoft.Edge.Canary'
end
