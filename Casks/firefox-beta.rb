cask 'firefox-beta' do
  version '55.0b1'

  language 'cs' do
    sha256 '1cb6417f7c1e999bdb84d94f27aaeb36d9c6ce5981fa9a866b3831643b3c5ec7'
    'cs'
  end

  language 'de' do
    sha256 'bf51b9a8e35acc79debe11eb272ee442e241b363c2c17720124b390533a23c2a'
    'de'
  end

  language 'en-GB' do
    sha256 '241283cbfad0e5694b0162c92a9eb62348f4adea052f24a934a90b841aec3fce'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'bf54ee37ed975433d2c0ae872cf77fbeebb5d9b693def3a41ee43e061a994238'
    'en-US'
  end

  language 'fr' do
    sha256 '437563e9307a091e299539ea1a3f4ffe45d2aa9f509ed3d2cf65087be3ee433f'
    'fr'
  end

  language 'gl' do
    sha256 'eb51c6e7faa4980e383acfad5970c2c0e780824d628e0f5ca51602ab36f3bc23'
    'gl'
  end

  language 'it' do
    sha256 '55d816c62dcd777e00bb0d20b481410d53eedbef09a0b13e434e7edc5f7e41c1'
    'it'
  end

  language 'ja' do
    sha256 '2897da6473220720d109392a519208df4763778cc6874077e9fbc9e217fdfbac'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '3ee8d049e48591ce9f41a2bea358e48097b1d028dfb8e17e65b464b8917f1cf0'
    'nl'
  end

  language 'pl' do
    sha256 '65f2376d2121cda79d8fa8c6a1ca49ffa7e89b368ff64abe76a756a64bf04ef2'
    'pl'
  end

  language 'pt' do
    sha256 '134733f79e3ceb2d8acc9dd184a871159781607c981efdee1bcf02c8698fffa5'
    'pt-PT'
  end

  language 'ru' do
    sha256 'b3f43f53385f1e4999e40f4f885393083b9f579e35a5007155bb1116eda9e528'
    'ru'
  end
  language 'uk' do
    sha256 '80a848ee56aad2f9554eb580bb068789fb14bba6d0ec261275918672b8fa9878'
    'uk'
  end

  language 'zh-TW' do
    sha256 '60e5e2d6af622e6563164efba6eb740956eeeddcf66c2985a589b0dba7735a7f'
    'zh-TW'
  end

  language 'zh' do
    sha256 '1fd2c382c3292e2fd48501804db8f1cab4df553877d2efbcd88f500a78372fea'
    'zh-CN'
  end

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=#{language}"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/desktop/#beta'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
