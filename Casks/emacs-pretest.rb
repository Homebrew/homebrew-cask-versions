cask "emacs-pretest" do
  version "27.0.91-1"
  sha256 "4d3d11e1b5193da733963adcc4b275ff93b29538463fbc8ab1363fa65b6bfc4e"

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
