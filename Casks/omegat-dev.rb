cask 'omegat-dev' do
  version '4.1.1'
  sha256 '1ffe17252bce43c1922760811ac5df8b55e7ff075dbc969387c06cf126cbd30e'

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Latest/OmegaT%20#{version}/OmegaT_#{version}_Beta_Mac_Signed.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Latest',
          checkpoint: '7775eec68c7ea509552572bd1304925c654554cac557ee3d0ea5b3cba6522a0e'
  name 'OmegaT Development'
  homepage 'http://www.omegat.org/'

  app "OmegaT_#{version}_Beta_Mac_Signed/OmegaT.app"

  caveats do
    depends_on_java('8+')
  end
end
