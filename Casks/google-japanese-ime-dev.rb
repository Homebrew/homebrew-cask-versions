cask :v1 => 'google-japanese-ime-dev' do
  version 'dev'
  sha256 '7aaf6d322f431fe63dae44bed9ab69fa8fffe3928337bba17b9884dc6c6494c9'

  url 'https://dl.google.com/japanese-ime/dev/GoogleJapaneseInput.dmg'
  homepage 'https://www.google.co.jp/ime/'
  license :unknown

  pkg 'GoogleJapaneseInput.pkg'
  uninstall :pkgutil => 'com.google.pkg.GoogleJapaneseInput',
            :launchctl => [
                           'com.google.inputmethod.Japanese.Converter',
                           'com.google.inputmethod.Japanese.Renderer'
                          ]
end
