class FirefoxAuroraJa < Cask
  version '33.0a2'
  sha256 'ea56c43a6e93789765af356ce812c64a51cb9d0da33d21bef6d4aed54428a1a7'

  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora-l10n/firefox-#{version}.ja-JP-mac.mac.dmg"
  homepage 'https://www.mozilla.org/ja/firefox/channel/#aurora'

  link 'FirefoxAurora.app'
end
