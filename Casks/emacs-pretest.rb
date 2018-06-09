cask 'emacs-pretest' do
  version '26.1-rc1-1'
  sha256 '722187515f514c748d36999ef4d638aac8e4352bf3c7c39d4c7266e913a493d2'

  url "https://emacsformacosx.com/emacs-builds/Emacs-pretest-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/pretest'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
