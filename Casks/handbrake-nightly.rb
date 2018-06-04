cask 'handbrake-nightly' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    base_url = 'https://handbrake.fr/nightly.php'
    URI(base_url).open.read.scan(%r{href="([^"]+.dmg)"}).flatten.first
  end
  name 'HandBrake Nightly'
  homepage 'https://handbrake.fr/nightly.php'

  depends_on macos: '>= :lion'

  app 'HandBrake.app'
end
