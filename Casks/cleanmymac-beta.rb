class CleanmymacBeta < Cask
  version :latest
  sha256 :no_check

  url 'http://dl.devmate.com/com.macpaw.CleanMyMac2/beta/CleanMyMac2.zip'
  appcast 'http://updateinfo.devmate.com/com.macpaw.CleanMyMac2/beta/updates.xml',
          :sha256 => '14ab02f182c5d743efe0688569a4f16d941b237f4c917f497fa25a499d529b9a'
  homepage 'http://macpaw.com/cleanmymac'
  license :unknown

  app 'CleanMyMac 2.app'
end
