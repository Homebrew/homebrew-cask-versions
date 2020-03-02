cask 'airmail-beta' do
  version '4.0,609'
  sha256 '2193a03781ece28031f07af3558a36d18a9502c9e0c345a5ed0d91b73a26ea41'

  # appcenter-filemanagement-distrib2ede6f06e.azureedge.net/a61ee875-4fc5-4d5c-a05e-c2530ece39cf was verified as official when first introduced to the cask
  url 'https://appcenter-filemanagement-distrib2ede6f06e.azureedge.net/a61ee875-4fc5-4d5c-a05e-c2530ece39cf/Airmail%20Beta.app.zip?sv=2018-03-28&sr=c&sig=v421mFWezOf2Ny6eiA5EI7pLwQBOqUd1JbihMWX88sw%3D&se=2020-03-03T21%3A16%3A08Z&sp=r&download_origin=appcenter'
  appcast 'https://install.appcenter.ms/orgs/cogsci-apps/apps/hook/distribution_groups/hook%20productivity%20app%20general%20availability'
  name 'Airmail'
  homepage 'https://airmailapp.com/beta/'

  app 'Airmail Beta.app'

  uninstall quit: 'it.bloop.airmail.beta11'
end
