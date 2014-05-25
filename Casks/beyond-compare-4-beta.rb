class BeyondCompare4Beta < Cask
  url 'http://www.scootersoftware.com/BCompareOSX-4.0.0.17905.zip'
  homepage 'http://www.scootersoftware.com/beta.php'
  version '4.0.0.17905'
  sha256 'f67490c52cf13343d9fda55f864519f94d13fe2c1faa8b81ee18ab026bee093e'
  link 'Beyond Compare.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.ScooterSoftware.BeyondCompare', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
