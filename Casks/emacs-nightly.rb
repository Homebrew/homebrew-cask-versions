cask 'emacs-nightly' do
  version '2017-04-22_01-41-02-d812d20fbc3e1eff0f10443baed801adda9031cd'
  sha256 '7a11906cc3904da3aa0970c5e87d3c3b301d6c7584da568825075db2273ee4e1'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: '3191d01f8b1b81ce19471554d70a171f069059a82736265af7ab50f5f415745c'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
