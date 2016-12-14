cask 'emacs-nightly' do
  version '2016-12-14_01-45-52-51b2669ad51441b3bd318c749e67b267defe4882'
  sha256 '74af0bfa2a78901922f15316bccea89de8197a1bb53fd3b13d0507b13d877340'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: 'fb4384cdb44512185fdcd5f116d8497a216df4752b2f6fbe0ed376679251e5ea'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
