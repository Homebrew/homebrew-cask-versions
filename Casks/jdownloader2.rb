cask :v1 => 'jdownloader2' do
  version :latest
  sha256 :no_check

  if MacOS.release < :lion
    url 'http://installer.jdownloader.org/JD2SilentSetup_10_6orlower.dmg'
  else
    url 'http://installer.jdownloader.org/JD2SilentSetup.dmg'
  end
  homepage 'http://jdownloader.org/download/offline'
  license :unknown

  installer :manual => 'JDownloader Installer.app'
end
