cask 'sketchup-pro' do
  version :latest
  sha256 :no_check

  # downloads can be found at http://www.sketchup.com/download/all
  # trimble.com/sketchup was verified as official when first introduced to the cask
  url 'https://dl.trimble.com/sketchup/SketchUpPro-en.dmg'
  name 'SketchUp'
  homepage 'https://www.sketchup.com/intl/en/'

  suite 'SketchUp 2016'

  zap delete: [
                '~/Library/Application Support/SketchUp 2016',
                '~/Library/Caches/com.sketchup.SketchUp.2016',
              ]
end
