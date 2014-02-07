class Jdownloader2 < Cask
  # check OS version
  os = `sw_vers`
  if os.match('ProductVersion:\s+10.(\d).\d')[1].to_i <= 6
    # you are on 10.6 or lower
    url 'http://installer.jdownloader.org/JD2SilentSetup_10_6orlower.dmg'
  else
    # you are on 10.7 or higher
    url 'http://installer.jdownloader.org/JD2SilentSetup.dmg'
  end
  homepage 'http://jdownloader.org/download/offline'
  version 'latest'
  no_checksum
  link 'JDownloader Installer.app'
  caveats do
    manual_installer 'JDownloader Installer.app'
  end
end
