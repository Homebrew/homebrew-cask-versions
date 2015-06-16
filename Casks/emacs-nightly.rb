cask :v1 => 'emacs-nightly' do
  version '2015-06-16_01-41-01-32a4883'
  sha256 '692b2eb9ec83b05aceb29719cfdcac4a0581cf12e94ba5e61ec04252810de128'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
