cask 'logic-beta' do
  version '1.2.8'
  sha256 '3faba40c461c764f7570b981f607e0c5f5e94a227116f318e9ed3712ce024c65'

  url "http://downloads.saleae.com/betas/#{version}/Logic-#{version}-Darwin.dmg"
  name 'Logic'
  homepage 'https://www.saleae.com/'
  license :commercial

  app 'Logic.app'
end
