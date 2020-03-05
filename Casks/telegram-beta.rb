cask 'telegram-beta' do
  version :latest
  sha256 :no_check

  # api.appcenter.ms/v0.1/public/sdk/apps/6ed2ac30-49e1-4073-87c2-f1ffcb74e81f/releases/latest was verified as official when first introduced to the cask
  url do
    require 'open-uri'
    require 'json'
    base_url = 'https://api.appcenter.ms/v0.1/public/sdk/apps/6ed2ac30-49e1-4073-87c2-f1ffcb74e81f/releases/latest'
    URI(base_url).open do |release_page|
      latest_json = release_page.read
      JSON.parse(latest_json)['download_url']
    end
  end
  name 'Telegram for macOS'
  name 'Telegram Swift'
  homepage 'https://macos.telegram.org/'

  auto_updates
  conflicts_with cask: 'telegram'
  depends_on macos: '>= :yosemite'

  app 'Telegram.app'
end
