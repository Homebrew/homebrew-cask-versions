cask 'firefox-beta' do
  version '51.0b5'

  language 'de' do
    sha256 '7a9f4c367c2d7e2b55acf032cdcaa4ede525ff7d7c8fee006c00808920d79917'
    'de'
  end

  language 'en-GB' do
    sha256 '92e1bc1ad5b1affa63b89085de2d0b8314ade8dfb4537fa2f34a2e9d0c721a52'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'ecfa226780416715a72d99a64293b65b55a58a334e358a5f86cdaa9bb24c514f'
    'en-US'
  end

  language 'fr' do
    sha256 '1478c756231f55d25c93db3416e4befa68e2660ee2e9a276cb6fea35794f9b7b'
    'fr'
  end

  language 'gl' do
    sha256 'f23449bea2dac8202fa6eb08a850ab9b6b2b6dd01a99225256f9538953f03493'
    'gl'
  end

  language 'it' do
    sha256 '1d2f5978888cc0a5bd62db2aa979a41a563d90a01c7d7f22df44284659d029b3'
    'it'
  end

  language 'ja' do
    sha256 '5ba8272cd3fd47dbb5fb7e150f4b639877147589c014fb675658e90374859b75'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '19387e7abfabdc001946ae94d7d13d12555b74ea78d681ad5484658d3c108e94'
    'nl'
  end

  language 'pl' do
    sha256 'b1a00382b90d0674000ba19ed5e03c43e21c3b73c1622d4b8b82873216a77cd0'
    'pl'
  end

  language 'pt' do
    sha256 '7d593efeae7a6544dfff5171b40e149ea58b6784416736983fe6a3f04b84670e'
    'pt-PT'
  end

  language 'ru' do
    sha256 '5fce6b3f5344e20c4d6b8eac75addca65c3455784daf2a6cd481770540a032ea'
    'ru'
  end

  language 'uk' do
    sha256 '499d14dc016699b7064d648e51b3abcdc133b8dda38987f4b4a564957ab5ddc4'
    'uk'
  end

  language 'zh-TW' do
    sha256 'ec8a5a219201ce5a3b3dc51f84e50146a45351a292421eeaa0c4d040841b105d'
    'zh-TW'
  end

  language 'zh' do
    sha256 'b2a4418571e983cc95fc78a20894c53dfcfc300fa52a41c3f5f1412c1478b4cb'
    'zh-CN'
  end

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=#{language}"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/#beta'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
