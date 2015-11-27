cask :v1 => 'jdownloader2' do
  version :latest
  sha256 :no_check

  if MacOS.release <= :snow_leopard
    url 'http://installer.jdownloader.org/JD2Setup_10_6orlower.dmg'
  else
    url 'http://installer.jdownloader.org/JD2Setup.dmg'
  end

  name 'JDownloader 2'
  homepage 'http://jdownloader.org'
  license :gpl

  preflight do
    system '#{staged_path}/JDownloader Installer.app/Contents/MacOS/JavaApplicationStub',
           '-q',
           '-dir',
           '#{staged_path}',
           '-Dinstall4j.suppressStdout=true',
           '-Dinstall4j.debug=false',
           '-VcreateDesktopLinkAction$Boolean=false',
           '-VaddToDockAction$Boolean=false',
           '> /dev/null',
           '2>&1'
  end

  app 'JDownloader 2.0/JDownloader2.app'
end
