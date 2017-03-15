cask 'omegat-dev' do
  version '4.1.1'
  sha256 '1ffe17252bce43c1922760811ac5df8b55e7ff075dbc969387c06cf126cbd30e'

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Latest/OmegaT%20#{version}/OmegaT_#{version}_Beta_Mac.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Latest',
          checkpoint: '66d1d12c29bf7aa884131ecac2e6f500d91d1585943b70b713b8cb1b180d0219'
  name 'OmegaT Development'
  homepage 'http://www.omegat.org/'

  app "OmegaT_#{version}_Beta_Mac_Signed/OmegaT.app"

  caveats do
    depends_on_java('8+')
  end
end
