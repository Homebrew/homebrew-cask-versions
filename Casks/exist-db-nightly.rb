cask 'exist-db-nightly' do
  version :latest
  sha256 :no_check

  # static.adamretter.org.uk/exist-nightly was verified as official when first introduced to the cask
  url do
    require 'nokogiri'
    require 'open-uri'
    base_url = 'http://static.adamretter.org.uk/exist-nightly'
    builds_url = "#{base_url}/table.html"
    builds_doc = Nokogiri::HTML(open(builds_url))
    latest_build_filename = builds_doc.xpath('//tr[td/a]').sort_by { |a| a.xpath('td[1]').text }.last.xpath('td[3]/a[3]/@href')
    "#{base_url}/#{latest_build_filename}"
  end
  name 'eXist-db'
  homepage 'http://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'
end
