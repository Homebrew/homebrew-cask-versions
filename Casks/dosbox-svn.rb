cask 'dosbox-svn' do
  version :latest
  sha256 :no_check

  # dl.dropbox.com/u/7737184 was verified as official when first introduced to the cask
  url 'http://dl.dropbox.com/u/7737184/Dosbox/Dosbox-Snapshot.dmg'
  name 'DOSBox SVN'
  homepage 'https://www.dosbox.com/wiki/SVN_Builds#Plain.2Fvanilla.2Fclean_SVN_builds/'
  license :gpl

  app 'DOSBoxSVN.app'
end
