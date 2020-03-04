cask 'emacs-pretest' do
  version '27.0.90'
  sha256 '502c849bfccef7f0aa86aa4a6bfed6f8bf0d87452cfdd3adb22bdd85857c1cd1'

  url "https://emacsformacosx.com/emacs-builds/Emacs-pretest-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/pretest'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  conflicts_with cask:    [
                            'emacs',
                            'emacs-nightly',
                          ],
                 formula: 'emacs'

  app 'Emacs.app'
  binary "#{appdir}/Emacs.app/Contents/MacOS/Emacs", target: 'emacs'
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ebrowse"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/emacsclient"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/etags"

  zap trash: [
               '~/Library/Caches/org.gnu.Emacs',
               '~/Library/Preferences/org.gnu.Emacs.plist',
               '~/Library/Saved Application State/org.gnu.Emacs.savedState',
             ]
end
