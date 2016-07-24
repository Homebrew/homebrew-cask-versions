cask 'adobe-indesign-cc-es' do
  version :latest
  sha256 :no_check

  url 'http://trials3.adobe.com/AdobeProducts/IDSN/11/osx10/InDesign_11_LS20.dmg',
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe InDesign CC 2015'
  homepage 'https://www.adobe.com/products/indesign.html'
  license :commercial

  conflicts_with cask: 'adobe-indesign-cc'

  preflight do
    deployment_xml = "#{staged_path}/Adobe InDesign CC 2015/deploy/install.xml"

    IO.write(deployment_xml, IO.read(deployment_xml).gsub('>en_US<', '>es_ES<'))

    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe InDesign CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{deployment_xml}"
  end

  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe InDesign CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ InDesign\ CC\ 2015/deploy/remove.xml"
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
