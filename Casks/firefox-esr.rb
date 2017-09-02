cask 'firefox-esr' do
  version '52.3.0'

  language 'cs' do
    sha256 '22c8b184d0e69d5384ce5e877a7400924fe3229b5c63a7b6c5a76c658e041fe3'
    'cs'
  end

  language 'de' do
    sha256 '2d9ed91e7b5df92879038ebf098db06eae755d2e69550503e64a9bcc3dbb9b83'
    'de'
  end

  language 'en-GB' do
    sha256 'd6f82401ffad320f4cfb8a34c493d2ead3760c271c0df4641001bfd8842cc2c0'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'd4681323b7d315a88b0e0c0d8d28d806969e8a91d7f490891fcb7a40d8e8c1e6'
    'en-US'
  end

  language 'fr' do
    sha256 'cf2fef76461ec01c7bbe8135782c97458b3f09bc0c3d7b89388332fe85b03e78'
    'fr'
  end

  language 'gl' do
    sha256 '76f711e53ffaeafa7c09fb0b359a469b5bc93013c85fecd609da48847485ef1c'
    'gl'
  end

  language 'it' do
    sha256 '4139cbb24a7630451af1546e436a2928fd0480616cb9419e18897a4a4bae6d3b'
    'it'
  end

  language 'ja' do
    sha256 'abc4d179b08dbe41d01715d996835d611babce166517136583cfa2670c96f1e3'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '4e86d90f8739481b0e4ba9a55cc21cc6b460ecf2c9dc8b14fa5299a32140dfc3'
    'nl'
  end

  language 'pl' do
    sha256 '5c8c1a1233288732ae13bdfc1ba57478089e1868f0949a22d359c1569ff68a0c'
    'pl'
  end

  language 'pt' do
    sha256 '2dbdfbbe2cacec9d98deab53e09c96f2a24c74a8a21cbda3022f60ff447f3f2a'
    'pt-PT'
  end

  language 'ru' do
    sha256 'b886ba5a8c56da4363454b93297e045026eddf290412fc1816cd3c4b12c37e27'
    'ru'
  end

  language 'uk' do
    sha256 '8501d34eaae1a3289e343e6b8705cf8d2bc0a1b4ac550c78805b10d1e60e645f'
    'uk'
  end

  language 'zh-TW' do
    sha256 '2b213269a3096e4f7560f6bfa27a9df43a0f4e2369ae162ed264deed3cbd4b20'
    'zh-TW'
  end

  language 'zh' do
    sha256 '7b119b859a179c4de8b72c4ae2d835e8ef7e28ded7f403d9b1906c17431e2a28'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  name 'Mozilla Firefox ESR'
  name 'Mozilla Firefox Extended Support Release'
  homepage 'https://www.mozilla.org/firefox/organizations/'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
