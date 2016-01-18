cask 'adobe-illustrator-cc-es' do
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

    File.open(deployment_xml) do |xml_before|
      contents = xml_before.read.gsub!('>en_US<', '>es_ES<')
      File.open(deployment_xml, 'w+') { |xml_after| xml_after.write(contents) }
    end

    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Illustrator CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{deployment_xml}"
  end

  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Illustrator CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ Illustrator\ CC\ 2015/Deployment/uninstall.xml"
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
