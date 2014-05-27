class Jdownloader2 < Cask
  if MacOS.version == :lion or MacOS.version == :mountain_lion or MacOS.version == :mavericks
    url 'http://installer.jdownloader.org/JD2SilentSetup.dmg'
  else
    url 'http://installer.jdownloader.org/JD2SilentSetup_10_6orlower.dmg'
  end
  homepage 'http://jdownloader.org/download/offline'
  version 'latest'
  sha256 :no_check
  caskroom_only true
  caveats do
    manual_installer 'JDownloader Installer.app'
  end
end
