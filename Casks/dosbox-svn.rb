cask 'dosbox-svn' do
  version :latest
  sha256 :no_check

  url 'http://www.dropbox.com/s/kbrf5elbcu66kst/Dosbox-Snapshot.dmg?dl=1'
  name 'DOSBox SVN'
  homepage 'https://www.dosbox.com/wiki/SVN_Builds#Plain.2Fvanilla.2Fclean_SVN_builds/'

  app 'DOSBoxSVN.app'
end
