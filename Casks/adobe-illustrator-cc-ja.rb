cask 'adobe-illustrator-cc-ja' do
  version :latest
  sha256 :no_check

  url 'http://trials3.adobe.com/AdobeProducts/ILST/19/osx10-64/Illustrator_19_LS20.dmg',
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Illustrator CC 2015'
  homepage 'https://www.adobe.com/products/illustrator.html'
  license :commercial

  conflicts_with cask: 'adobe-illustrator-cc'

  preflight do
    deployment_xml = "#{staged_path}/Adobe Illustrator CC 2015/Deployment/deployment.xml"

    IO.write(deployment_xml, IO.read(deployment_xml).gsub('>en_US<', '>ja_JP<'))

    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Illustrator CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{deployment_xml}"
  end

  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Illustrator CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ Illustrator\ CC\ 2015/Deployment/uninstall.xml"
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
