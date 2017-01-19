cask 'emacs-nightly' do
  version '2017-01-18_01-46-59-dbb29d7eb428dd53617d31a9cc159d889deb1e8e'
  sha256 '4ef2851bb60f0874880c8f92033b9cb34c962137ef48ce0d6270be3e9142cb61'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: '1a744938a3574eb21a294c378f920066cfbed9d28d417f6718e0ffd1b2fe4e60'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
