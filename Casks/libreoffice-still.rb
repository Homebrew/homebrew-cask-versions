cask 'libreoffice-still' do
  version '5.2.7'
  sha256 'd71a68fdeda39baa3cb01eb25b167a9a245991af7db2c58537af002308d2d3c7'

  # documentfoundation.org was verified as official when first introduced to the cask
  url "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  name 'LibreOffice Still'
  homepage 'https://www.libreoffice.org/download/libreoffice-still/'
  gpg "#{url}.asc", key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  depends_on macos: '>= :mountain_lion'

  app 'LibreOffice.app'
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/gengal"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/regmerge"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/regview"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/senddoc"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/ui-previewer"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/uno"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/unopkg"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/urelibs"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/uri-encode"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/xpdfimport"
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/soffice.wrapper.sh"
  binary shimscript, target: 'soffice'

  preflight do
    IO.write shimscript, <<-EOS.undent
      #!/bin/sh
      '#{appdir}/LibreOffice.app/Contents/MacOS/soffice' "$@"
    EOS
  end

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.libreoffice.script.sfl',
                '~/Library/Application Support/LibreOffice',
              ]
end
