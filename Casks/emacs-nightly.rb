cask 'emacs-nightly' do
  version '2017-05-09_01-41-06-daaec72a82e76f916e639acb51a8ad602433e8a9'
  sha256 '07deda2329d2dcaa5faef88a151b409aaf10a05dfd8d0d1d2bbd7e7f593391e1'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: '9bdf3d1af5d3a58bb2bba6f59e2e4bd6234ea8ef1fff0dfeda880e7fd00a1122'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
