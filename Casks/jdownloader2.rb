class Jdownloader2 < Cask
  version :latest
  sha256 :no_check

  if MacOS.version < :lion
    url 'http://installer.jdownloader.org/JD2SilentSetup_10_6orlower.dmg'
  else
    url 'http://installer.jdownloader.org/JD2SilentSetup.dmg'
  end
  homepage 'http://jdownloader.org/download/offline'
  license :unknown

  caveats do
    manual_installer 'JDownloader Installer.app'
  end
end
