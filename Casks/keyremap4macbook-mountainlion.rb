cask 'keyremap4macbook-mountainlion' do
  version '8.4.0'
  sha256 '39fb33460f1abec99235c2095bf766d112cc62204c944cc43fd46f3cdb5cc099'

  url "https://pqrs.org/macosx/keyremap4macbook/files/KeyRemap4MacBook-#{version}.dmg"
  homepage 'https://pqrs.org/macosx/keyremap4macbook/'
  license :unknown

  pkg 'KeyRemap4MacBook.pkg'
end
