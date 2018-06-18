cask 'libreofficedev' do
  version '6.1.0.0.beta2'
  sha256 '8fb37db03715a6c403db752ba8d9edc71022055cc34c9a75b1417216c00d1984'

  # documentfoundation.org/libreoffice was verified as official when first introduced to the cask
  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/x86_64/LibreOfficeDev_#{version}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/testing/'
  name 'LibreOffice Development Version'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  gpg "#{url}.asc", key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  depends_on macos: '>= :mavericks'

  app 'LibreOfficeDev.app'
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/gengal", target: 'gengal-dev'
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/regmerge", target: 'regmerge-dev'
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/regview", target: 'regview-dev'
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/senddoc", target: 'senddoc-dev'
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/ui-previewer", target: 'ui-previewer-dev'
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/uno", target: 'uno-dev'
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/unoinfo", target: 'unoinfo-dev'
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/unopkg", target: 'unopkg-dev'
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/uri-encode", target: 'uri-encode-dev'
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/xpdfimport", target: 'xpdfimport-dev'
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/soffice.wrapper.sh"
  binary shimscript, target: 'soffice-dev'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/LibreOfficeDev.app/Contents/MacOS/soffice' "$@"
    EOS
  end

  zap trash: [
               '~/Library/Application Support/LibreOfficeDev',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.libreoffice.script.sfl*',
               '~/Library/Preferences/org.libreoffice.script.plist',
               '~/Library/Saved Application State/org.libreoffice.script.savedState',
             ]
end
