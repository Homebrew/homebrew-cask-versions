cask 'slicer-nightly' do
  version :latest
  sha256 :no_check

  base_url = 'https://download.slicer.org'
  url do
    require 'open-uri'
    require 'json'
    URI("#{base_url}/find?os=macosx&stability=nightly").open do |json_page|
      content = JSON.parse(json_page.read)
      "#{base_url}#{content['download_url']}"
    end
  end
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
