cask 'dosbox-svn' do
  version :latest
  sha256 :no_check

  # dl.dropboxusercontent.com/s/kbrf5elbcu66kst was verified as official when first introduced to the cask
  url 'https://dl.dropboxusercontent.com/s/kbrf5elbcu66kst/Dosbox-Snapshot.dmg'
  name 'DOSBox SVN'
  homepage 'https://www.dosbox.com/wiki/SVN_Builds#Plain.2Fvanilla.2Fclean_SVN_builds/'

  app 'DOSBoxSVN.app'
end
