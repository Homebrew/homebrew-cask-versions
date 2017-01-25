cask 'firefox-beta' do
  version '52.0b1'

  language 'de' do
    sha256 'cf5a90ba323300d41025f88ff31ab01549be7d808619d91d9a0a801c4e84d589'
    'de'
  end

  language 'en-GB' do
    sha256 'cf09e01a4db43434d385146ca2d743438d6c27d6590fc459e1848cf2e4611db3'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '3f68a5c9273cc497084b7f69c012bb15bc60fc4b0dac9177cf321651f7658e3b'
    'en-US'
  end

  language 'fr' do
    sha256 '9593ad76cd600657b5224a48c2d296fd55bddda227369a2d477c051804b710f5'
    'fr'
  end

  language 'gl' do
    sha256 'c356b579f7cad451bb5020ae3c5af03b5ea9ce6bac2c279c57bd08124c31e2a8'
    'gl'
  end

  language 'it' do
    sha256 '0d5afb3ac9258b57c87f6891bb92d14793bc0720ade1ea56b291dde1ba15a1d6'
    'it'
  end

  language 'ja' do
    sha256 '9ddc04d7b080515ae1299b30aa4e6b112fc5b0d631af0bdce99a46e4159b0f85'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '98279beb2a6615450f6f6851400050dad1be5916d293b0bb4affd28cb820fceb'
    'nl'
  end

  language 'pl' do
    sha256 '9b69d4df4c471e0cdad2cd69efbd16acf4a7d29736e0d28e19f033a4657f8eb6'
    'pl'
  end

  language 'pt' do
    sha256 '5e9e87e28894963b9046ca6dcfc27e29fb0f1aeb2c2aa71c3f9736b69a580325'
    'pt-PT'
  end

  language 'ru' do
    sha256 'b7446647042bfefd70084e6a416f721261d507d7ccb40a95d814b60b458cb92b'
    'ru'
  end

  language 'uk' do
    sha256 '94b17e1a75455756eaf23695d848ce6c415358547868b7d84d5ea33b2a76e0f1'
    'uk'
  end

  language 'zh-TW' do
    sha256 'd1afd0cbc91f801e1cd00e370017ffafbd1d46854c710b272dc50c99c587755f'
    'zh-TW'
  end

  language 'zh' do
    sha256 'cd9bad749b23db844418d27b503f5a0fe89147f3bfa2486252c70a84db06e706'
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
