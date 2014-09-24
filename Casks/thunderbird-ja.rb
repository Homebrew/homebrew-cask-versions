class ThunderbirdJa < Cask
  version '31.1.1'
  sha256 'aa5da47afcc4f71e40f86b94c6033d86d707690a80a8610e1a5f9c09a5ca4629'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  homepage 'http://www.mozilla.jp/thunderbird/'

  app 'Thunderbird.app'
end
