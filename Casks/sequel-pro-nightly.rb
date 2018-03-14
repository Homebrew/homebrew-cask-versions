cask 'sequel-pro-nightly' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    URI('https://sequelpro.com/builds/latest-test-build.xml').open do |page|
      page.read[%r{https:\/\/sequelpro.com\/builds\/Sequel-Pro-Build-\w+.zip}]
    end
  end
  name 'Sequel Pro'
  homepage 'https://sequelpro.com/test-builds'

  depends_on macos: '>= :leopard'

  app 'Sequel Pro.app'

  zap trash: '~/Library/Application Support/Sequel Pro/Data'
end
