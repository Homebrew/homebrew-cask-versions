cask 'emacs-nightly' do
  version '2016-12-18_01-45-40-1a15d14e143ed84d8116c6510f9619d936ea43a1'
  sha256 '6ca4018bcda81eb90611d40e0ebf9587d3245f78300f974c845c35b0a3453939'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: 'f64360ab32acf7623024ca94b1c5c3c30d81eb764d06834111a21b65f5c99548'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
