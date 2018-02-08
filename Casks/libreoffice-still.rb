cask 'libreoffice-still' do
  version '5.4.5'
  sha256 '3e5c2552ad3f11083e452c57202c86287b48fb4a4f959505e420f0a1f2f8b586'

  # documentfoundation.org was verified as official when first introduced to the cask
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/stable/',
          checkpoint: 'ee6e2bcea5292e26489d457d0986d64ea95f0e1817d438604493bb8ce17b291a'
  name 'LibreOffice Still'
  homepage 'https://www.libreoffice.org/download/libreoffice-still/'
  gpg "#{url}.asc", key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  auto_updates true
  conflicts_with cask: [
                         'libreoffice',
                         'libreoffice-rc',
                       ]
  depends_on macos: '>= :mountain_lion'

  app 'LibreOffice.app'
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/gengal"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/regmerge"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/regview"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/senddoc"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/ui-previewer"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/uno"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/unoinfo"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/unopkg"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/uri-encode"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/xpdfimport"
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/soffice.wrapper.sh"
  binary shimscript, target: 'soffice'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/LibreOffice.app/Contents/MacOS/soffice' "$@"
    EOS
  end

  zap trash: [
               '~/Library/Application Support/LibreOffice',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.libreoffice.script.sfl*',
               '~/Library/Preferences/org.libreoffice.script.plist',
               '~/Library/Saved Application State/org.libreoffice.script.savedState',
             ]
end
