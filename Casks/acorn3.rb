cask :v1 => 'acorn3' do
  version '3.5.2'
  sha256 'ffc4cd551b9eb2ebadfe8e59c95e84b1f59538d7915eff63dd6c3efdca7858e6'

  url "https://secure.flyingmeat.com/download/Acorn-#{version}.zip"
  homepage 'https://secure.flyingmeat.com/acorn/'
  license :closed

  app 'Acorn.app'
end
