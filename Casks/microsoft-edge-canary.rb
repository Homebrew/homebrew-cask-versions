cask 'microsoft-edge-canary' do
  module Utils
    @file_version = :latest

    def self.version(version)
      @file_version = version
    end

    def self.file_version
      @file_version
    end
  end

  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    appcast = 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/0409EDCN01-chk.xml'
    appcast_version = URI(appcast).read.scan(%r{<string>(.*)<\/string>})[2].join.split('.')
    # Parsing logic clarified by vendor, please review https://github.com/Homebrew/homebrew-cask-versions/issues/7778#issuecomment-525870763 prior to modification
    url_version = "#{appcast_version[0]}.0.#{appcast_version[1]}.#{appcast_version[2][6..-1]}"
    Utils.version(url_version)

    # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
    "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdgeCanary-#{Utils.file_version}.pkg"
  end
  name 'Microsoft Edge Canary'
  homepage 'https://www.microsoftedgeinsider.com/'

  pkg "MicrosoftEdgeCanary-#{Utils.file_version}.pkg"

  uninstall pkgutil: 'com.microsoft.edgemac.Canary'

  zap launchctl: [
                   'com.microsoft.autoupdate.helper',
                   'com.microsoft.update.agent',
                 ],
      pkgutil:   'com.microsoft.package.Microsoft_AutoUpdate.app',
      trash:     [
                   '/Library/PrivilegedHelperTools/com.microsoft.autoupdate.helper',
                   '~/Library/Preferences/com.microsoft.edgemac.Canary.plist',
                   '/Library/Application Support/Microsoft',
                   '~/Library/Application Support/Microsoft Edge Canary',
                 ]
end
