cask "emacs-pretest" do
  version "27.1.90"
  sha256 "3e456e7dc991d39fb0a1e3d1415914135f7d51a367bee93ad69aae2224c88888"

  url "https://emacsformacosx.com/emacs-builds/Emacs-pretest-#{version}-universal.dmg"
  appcast "https://emacsformacosx.com/atom/pretest"
  name "Emacs"
  homepage "https://emacsformacosx.com/"

  conflicts_with cask:    [
    "emacs",
    "emacs-nightly",
  ],
                 formula: "emacs"

  app "Emacs.app"
  binary "#{appdir}/Emacs.app/Contents/MacOS/Emacs", target: "emacs"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin-x86_64-10_14/ebrowse"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin-x86_64-10_14/emacsclient"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin-x86_64-10_14/etags"

  zap trash: [
    "~/Library/Caches/org.gnu.Emacs",
    "~/Library/Preferences/org.gnu.Emacs.plist",
    "~/Library/Saved Application State/org.gnu.Emacs.savedState",
  ]
end
