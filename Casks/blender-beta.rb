cask 'blender-beta' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    base_url = 'https://builder.blender.org/download/'
    latest_build = ''
    URI(base_url).open do |io|
      latest_build = io.read.scan(%r/blender-2.8-[0-9a-z-]+OSX[-._0-9a-z]+/)[0]
    end
    "#{base_url}#{latest_build}"
  end
  def build_file
    require 'open-uri'
    URI('https://builder.blender.org/download/').open do |io|
      src = io.read.scan(%r/blender-2.8[-0-9a-z]+OSX-[0-9a-z_.-]+[<>\/a-z]+[0-9.A-Z]+[<>\/a-z]+[A-Za-z0-9 :]+/)[0]
      file_parts = src.split('-')
      return "#{file_parts[0]}-#{file_parts[1]}.0-git#{build_date(src)}.#{file_parts[2]}-#{file_parts[5][0..5]}"
    end
  end

  def build_date(src)
    require 'date'
    date_parts = src.split('<td>')[-1].split(' ')
    build_month = Date::ABBR_MONTHNAMES.index(date_parts[0]).to_s
    build_month = '0' << build_month if build_month.length == 1
    "#{date_parts[2]}#{build_month}#{date_parts[1]}"
  end

  name 'blender'
  homepage 'https://blender.org/'

  app "#{build_file}/blender.app", target: 'Blender-Beta.app'
  shimscript = "#{staged_path}/blender_wrapper.sh"
  binary shimscript, target: 'blender'

  preflight do
    FileUtils.chmod 'u+w', Dir.glob("#{staged_path}/*app/**/__pycache__")
    IO.write shimscript, <<~EOS
      #!/bin/bash
      '#{appendir}/Blender.app/Contents/MacOS/blender' "$@"
    EOS
  end
end
