cask 'skitch1' do
  version :latest
  sha256 :no_check

  url 'http://evernote.com/download/get.php?file=SkitchMac_v1'
  name 'Skitch'
  homepage 'https://blog.evernote.com/blog/2012/11/21/skitch-and-evernote-a-letter-from-keith-lang/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Skitch.app'
end
