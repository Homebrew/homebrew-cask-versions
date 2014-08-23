class CleanmymacBeta < Cask
  version 'latest'
  sha256 :no_check

  url 'http://dl.devmate.com/com.macpaw.CleanMyMac2/beta/CleanMyMac2.zip'
  appcast 'http://updateinfo.devmate.com/com.macpaw.CleanMyMac2/beta/updates.xml'
  homepage 'http://macpaw.com/cleanmymac'

  link 'CleanMyMac 2.app'
end
