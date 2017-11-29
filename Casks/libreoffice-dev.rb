cask 'libreoffice-dev' do
  version '6.0.0.0.beta1'
  sha256 'd835e369e30a89da59a0931f793e836462bf1b6f308f1ade094d5d328d96f73b'

  # documentfoundation.org/libreoffice was verified as official when first introduced to the cask
  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/x86_64/LibreOfficeDev_#{version}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/testing/',
          checkpoint: '7810d3e3bb4c834024d33ee8edbce5c869f5205d16a91faa8efb05958f52faf6'
  name 'LibreOffice Development Version'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  gpg "#{url}.asc", key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  conflicts_with cask: [
                         'libreoffice',
                         'libreoffice-still',
                       ]
  depends_on macos: '>= :mountain_lion'

  app 'LibreOfficeDev.app'
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/gengal"
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/regmerge"
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/regview"
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/senddoc"
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/ui-previewer"
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/uno"
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/unoinfo"
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/unopkg"
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/uri-encode"
  binary "#{appdir}/LibreOfficeDev.app/Contents/MacOS/xpdfimport"
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/soffice.wrapper.sh"
  binary shimscript, target: 'soffice'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/LibreOfficeDev.app/Contents/MacOS/soffice' "$@"
    EOS
  end

  zap trash: [
               '~/Library/Application Support/LibreOffice',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.libreoffice.script.sfl*',
               '~/Library/Preferences/org.libreoffice.script.plist',
               '~/Library/Saved Application State/org.libreoffice.script.savedState',
             ]
end
