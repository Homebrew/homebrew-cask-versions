cask 'omegat-dev' do
  version '4.1.3'
  sha256 '3f43019780741545ceabbbaa642a2a73e6db5e473364e264089cf2f84fc902cb'

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Latest/OmegaT%20#{version}/OmegaT_#{version}_Beta_Mac_Signed.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Latest',
          checkpoint: 'f83e1c66a06d0b3f98ee8af9ae8be163d47eb0f914987ba4bf6b344d4dd7787b'
  name 'OmegaT Development'
  homepage 'https://omegat.org/'

  app "OmegaT_#{version}_Beta_Mac_Signed/OmegaT.app"

  caveats do
    depends_on_java('8+')
  end
end
