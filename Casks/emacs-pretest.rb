cask 'emacs-pretest' do
  version '26.3-rc1'
  sha256 'a78210f215f3eee844ccf5b86c4b5bf0de7ca9fe0fbbe5eb22f60d0dc561261c'

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
