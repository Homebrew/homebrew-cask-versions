cask 'omegat-dev' do
  version '4.1.2'
  sha256 '75fd2a04296a4e3d8571d294b897c9e923d50a61ee695a65daa530650cedb054'

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Latest/OmegaT%20#{version}/OmegaT_#{version}_Beta_Mac_Signed.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Latest',
          checkpoint: 'c59a91a5dda1847d1b6bb9ee9fa5590082fa9fec11f5c5993131c0844a5abc15'
  name 'OmegaT Development'
  homepage 'https://omegat.org/'

  app "OmegaT_#{version}_Beta_Mac_Signed/OmegaT.app"

  caveats do
    depends_on_java('8+')
  end
end
