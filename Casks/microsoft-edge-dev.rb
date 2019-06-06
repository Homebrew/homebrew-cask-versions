cask 'microsoft-edge-dev' do
  module Utils
    def self.file_version
      require 'open-uri'
      appcast = 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/0409EDDV01-chk.xml'
      appcast_version = URI(appcast).read.scan(%r{<string>(.*)<\/string>})[2].join.split('.')
      appcast_version[0] + '.0.' + appcast_version[1] + '.1'
    end
  end

  version :latest
  sha256 :no_check

  # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdgeDev-#{Utils.file_version}.pkg"
  name 'Microsoft Edge Dev'
  homepage 'https://www.microsoftedgeinsider.com/'

  pkg "MicrosoftEdgeDev-#{Utils.file_version}.pkg"

  uninstall pkgutil: 'com.microsoft.Edge.Dev'
end
