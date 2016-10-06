cask 'emacs-nightly' do
  version '2016-10-06_01-43-38-6e6c08815347a78008211613c9ddfa0acd7f0ef8'
  sha256 '53a53cf2c62dcaada4ab6ec0e114ab9ca930688bbba455a90c6d3b316a7b0830'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: 'e99da4f3923fdfcd3a28efae9fae7e624d070cc210bb45099ff570caef2eab00'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
