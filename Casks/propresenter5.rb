cask 'propresenter5' do
  version '5.3.3_b13557'
  sha256 'b48a4b71e4393231cf170b13622b74ba1f17f20b47c25481db3e7c960d0b7745'

  url "https://www.renewedvision.com/downloads/ProPresenter#{version.major}_#{version}.dmg"
  appcast "https://www.renewedvision.com/update/ProPresenter#{version.major}.php",
          checkpoint: '553585dd716b569072546601e16bb1c0771d247d6f7df1e581a814f0542dbad4'
  name "ProPresenter #{version.major}"
  homepage 'https://www.renewedvision.com/propresenter.php'

  app "ProPresenter #{version.major}.app"
end
