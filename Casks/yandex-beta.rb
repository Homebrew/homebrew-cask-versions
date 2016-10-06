cask 'yandex-beta' do
  version :latest
  sha256 :no_check

  url 'https://browser.yandex.ru/download/?betacusto=1&os=mac'
  name 'Yandex.Browser'
  name 'Custo'
  homepage 'https://browser.yandex.ru/beta/'

  app 'Yandex.app'
end
