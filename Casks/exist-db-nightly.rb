cask 'exist-db-nightly' do
  version :latest
  sha256 :no_check

  # static.adamretter.org.uk/exist-nightly was verified as official when first introduced to the cask
  url do
    require 'open-uri'
    base_url = 'http://static.adamretter.org.uk/exist-nightly'
    builds_url = "#{base_url}/table.html"
    latest_build_filename = URI(builds_url).open do |io|
      io.read.scan(%r{<tr>.*?<td>(.*?)</td>.*?<a href="([^\"]+)">dmg}m).max[1]
    end
    "#{base_url}/#{latest_build_filename}"
  end
  name 'eXist-db'
  homepage 'https://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'

  zap trash: '~/Library/Application Support/org.exist'

  caveats do
    depends_on_java '8'
  end
end
