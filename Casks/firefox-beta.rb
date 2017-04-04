cask 'firefox-beta' do
  version '53.0b9'

  language 'de' do
    sha256 '851dc69c4d1cd821b3efcade9445c26049325e976bb6fea72dae85d7acdc9e29'
    'de'
  end

  language 'en-GB' do
    sha256 '729c6f316be4966f098484b6c358746ab085f7e3187b3eb281b08b37e72c8964'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'c9e4ec074523a965834088873505b30efe2a0706017d6ddaa1f02a9b991f4f9f'
    'en-US'
  end

  language 'fr' do
    sha256 'fb65aac8135238150022c14a89f5e41d320ee05d47b4c03ae66da4c4bcabf182'
    'fr'
  end

  language 'gl' do
    sha256 '69478735189bc8093f9154970d9edfc92ce267057a8008a714ef21d301317e3a'
    'gl'
  end

  language 'it' do
    sha256 '577e7cb1f968162137ee003c923238ef18e1d792e365cccad1a151436c9ef09e'
    'it'
  end

  language 'ja' do
    sha256 '753af4f2de40fac32039f67f1d7eb569747f72d68576631ca6b0c143f4d5ef88'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '06c1a51aca9bad29506d8f6a9cd6e3d0e1b36bf7f07e4c7f105aa79b912b3ce7'
    'nl'
  end

  language 'pl' do
    sha256 '2b466a5396dfb94c95e804a53a17980cebd19086e00b3f08cd7b619d320354ce'
    'pl'
  end

  language 'pt' do
    sha256 '49c49c4c8243190d704d70f1bea61ce5a9520548522417d1bee79dca6b114a17'
    'pt-PT'
  end

  language 'ru' do
    sha256 '85866d1b32456c112ee3c19fcd774547b4d6edf4c1e24180e62244da35b7daa5'
    'ru'
  end

  language 'uk' do
    sha256 '34eb6b58f7311caa67821a43ecdf9ee6b863158865eedce8c5a8055258206157'
    'uk'
  end

  language 'zh-TW' do
    sha256 '6de1d514b0b52e7743082f777239b6eb45a6bc1b48d14b97c93e318d19684ac4'
    'zh-TW'
  end

  language 'zh' do
    sha256 '72a63fecbe19c51a44a48a9e3f147ea09f06124a74f1c8c93a00f20fe5e6ec4a'
    'zh-CN'
  end

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=#{language}"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/#beta'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
