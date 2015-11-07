cask :v1 => 'handbrakecli-nightly' do
  version '20151106212427-96b99ea'
  sha256 'f1454b8850ce7df61c5808bb7d06c892907b14d9757231682ad2146b1407f820'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
