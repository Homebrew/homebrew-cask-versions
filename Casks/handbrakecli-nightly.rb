cask :v1 => 'handbrakecli-nightly' do
  version '0.10.2-818-1be374b'
  sha256 'b1adbc28a63f031d3570a907555efa47500cffa3d1bde26d444978ebe68b69b7'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-master-MacOSX.7_CLI_x86_64.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
