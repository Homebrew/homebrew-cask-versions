cask :v1 => 'emacs-nightly' do
  version '2015-10-14_01-42-39-f147c0f'
  sha256 '2019edd81471783a23414d8354d4f256b5a5f0662fa3b156308d5577b731ea99'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
