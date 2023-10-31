cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.5.7"

  on_arm do
    language "af" do
      sha256 "346e84f449d12817e7473b93694bab631595d31720a07aa819c62a9acdf16247"
      "af"
    end
    language "am" do
      sha256 "f773320b505e44dd1a35b391915ef76e88d016916fda51f3e531429442a33e0a"
      "am"
    end
    language "ar" do
      sha256 "7445a26088a4db06c5f140773a3610662162365a8f9af8dc77f5778abfb53324"
      "ar"
    end
    language "as" do
      sha256 "710404674966372f4e563349e5431423300ac97bf3a09e19e8f811aba48f7fa8"
      "as"
    end
    language "be" do
      sha256 "9dd6826a7223479dbbefe8ede3779351e08b0dfc43d2e21d358456d3d38ff29a"
      "be"
    end
    language "bg" do
      sha256 "a4b3633f94118bd70f1ed469350d71587ceb81e5d85082634776e75153939d56"
      "bg"
    end
    language "bn-IN" do
      sha256 "283200fc09246cbadc7fd0505a7dfebcdd8423fbbe3360b792ef45255f27db14"
      "bn-IN"
    end
    language "bn" do
      sha256 "009e87c4a77c03e1da7f0a31a53346a6b7b572c1650f2790cb93f3aeec6773a1"
      "bn"
    end
    language "bo" do
      sha256 "ed9cc9f976c48c9df89307e099e1638d68cd319f192247d7f6901a9800d785d4"
      "bo"
    end
    language "br" do
      sha256 "2a877f8b70b798c8fc4e5c4636b5b793744d496f9dde8db6b6e628561ca0956a"
      "br"
    end
    language "bs" do
      sha256 "3cc85e14ccd5dee2517d1d2a443a57fc3e39de08fa1d3a119be2fe9856169a8d"
      "bs"
    end
    language "ca" do
      sha256 "af48c6332dbe83104aa0674a808a94d959060cc2eeca8a5bc45b04b56a004425"
      "ca"
    end
    language "cs" do
      sha256 "1d46337862750c070ead47f4966d8349e6237f73f0cd148f3588891e6cba75a3"
      "cs"
    end
    language "cy" do
      sha256 "0316489e06ed21703182f0d8ef8f9b6447f8f7880914ecd7c865ce1814f5dd72"
      "cy"
    end
    language "da" do
      sha256 "59b7a05ba2d05a5e7a806ecad1756b2c383b7a946ee3913c4c4c079d2dd006ba"
      "da"
    end
    language "de" do
      sha256 "4b126f04c2f0d02de525830064035cd34c017b4a37a60c2141857626d48fce68"
      "de"
    end
    language "dz" do
      sha256 "8e4534f7dcfb26647d102358b59ba1d033ce629d3965334102e8f9a6bac607ec"
      "dz"
    end
    language "el" do
      sha256 "c3abe2587e950c58f2c6efe06c04a0b9bf5e634e700dddeee32d683c848b84ad"
      "el"
    end
    language "en-GB", default: true do
      sha256 "af624b2f224aff6494f78d9339346128930e57fc88942a462120629813ff7721"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "96f5453961bd588d0077de1d93590e4dc5e2ab09c718d4d5f8b940f62b4f1b8f"
      "en-ZA"
    end
    language "eo" do
      sha256 "03a0b96127382141548ec207d6272101d80254f0ea3ceb5fe021ce1ee55ad9e6"
      "eo"
    end
    language "es" do
      sha256 "50468a310f04409089d433b581ae24ee865253a661776487a7a707f5734b4bc9"
      "es"
    end
    language "et" do
      sha256 "af4889f46389d1a4326bdd970fc81d3920f2702a90e8fdbae8412e2f308b386a"
      "et"
    end
    language "eu" do
      sha256 "302b15755805cb39862eaaf9529ee47ae3119846dab3c3bb511581c70f82a05a"
      "eu"
    end
    language "fa" do
      sha256 "6184f73556648e17c2f680921036f4344e5e37fe4a4b79d1a398a46c1bb0c585"
      "fa"
    end
    language "fi" do
      sha256 "3db04b231670db594d636b9b46a0ba2b5f9475026c39b5a7319fb7b1c0d80f76"
      "fi"
    end
    language "fr" do
      sha256 "c98714afeb3b5fd97bb8d3f5848a0852d5fd8578ee0baf530e455e857eeac815"
      "fr"
    end
    language "fy" do
      sha256 "46afb8bb8227c267730466215af5cc1ff8d4fa310b03811859526071e1304333"
      "fy"
    end
    language "ga" do
      sha256 "1fbbc8892a96f0fc9259cbef62e7c3bc6ca2e844cbf6ec8334447f915b755dfc"
      "ga"
    end
    language "gd" do
      sha256 "ac446da0dc217d965716770b59284c8b2c7dcf48183a2136bb5ee7469b73274e"
      "gd"
    end
    language "gl" do
      sha256 "b633d84efb5fb24e16c38773f23d8abba803602d2b574807c6d982f2e30b6b3d"
      "gl"
    end
    language "gu" do
      sha256 "475fe7b9b659200f8965ed4e6e08cfe55d8665403b0253836a91335ec74fef36"
      "gu"
    end
    language "he" do
      sha256 "62e16a588e61b7624f04a5ca4ec262ed68c3d348c6f84edc2bb80b5d58c3f1c4"
      "he"
    end
    language "hi" do
      sha256 "322ef15a2554761182daf6380664efd802b4bc0d02a2c0f16c8ffd81587da68d"
      "hi"
    end
    language "hr" do
      sha256 "16ba4fd43df5641f8a5a17c58785b4fbdf0fca4839d9a2e3a912afbe694bbbb7"
      "hr"
    end
    language "hu" do
      sha256 "caae24597776c2d301b610a55b5a845f454ae20dcb65d4c7053ad38dfcbaf144"
      "hu"
    end
    language "id" do
      sha256 "14b21b071f17f6ab2cfc1b640994c763b4ee60d81d6b55d1854268379e09f572"
      "id"
    end
    language "is" do
      sha256 "9e634e10bd899d5281824348da1740d44c0ea3fdd31b9645746e41483f7f00f8"
      "is"
    end
    language "it" do
      sha256 "bb95e719a2cf360209fc5d9e8f918522d7bf3f43482069e16cc7606be2a5a307"
      "it"
    end
    language "ja" do
      sha256 "92310b69c3ce95924c937f5cc1039da606442a8cab24573dc81adcb7428c910a"
      "ja"
    end
    language "ka" do
      sha256 "bc56cb064384fe987b27a83984d18595760663f5f98a8ba3767daddb0715f693"
      "ka"
    end
    language "kk" do
      sha256 "204a730a7399141b83c3c3b46d8b908070c2b989a7cf248df71dcf8c8146557f"
      "kk"
    end
    language "km" do
      sha256 "5798c322805c179dfc6a31b269bce4ec7e10c3b283dcea71a787ff96b79854e1"
      "km"
    end
    language "kn" do
      sha256 "06b417f625461c57734ea08fd697b2b4946b3fb58bd5c0b0ad137c9f826c446d"
      "kn"
    end
    language "ko" do
      sha256 "9dbbab9510b4d4e582083a3c126c5809bfe4060c664cadd72845e12c5467b53c"
      "ko"
    end
    language "ks" do
      sha256 "67cbdbbe091133ea17f7ab4f38ef6d1aa99c82be462778ae7e477ae5ac98bb2a"
      "ks"
    end
    language "lb" do
      sha256 "dcf31e2206966daab111fa4746a10af2532b83384f06d4ef8aeaf941e7e89107"
      "lb"
    end
    language "lo" do
      sha256 "4e495af14efd4664598840d642255103e6b83ff07d82373cc0e507e9490284b2"
      "lo"
    end
    language "lt" do
      sha256 "6076d1ea65ed8e13ffb2aeaa946fab49f613f1a321beec861d6e7df8ba1f6159"
      "lt"
    end
    language "lv" do
      sha256 "f82faa464e9a2a4655f4408f2f342ccaa7a6407bb9a48faf166c3431e6e22ef9"
      "lv"
    end
    language "mk" do
      sha256 "b3a96aec1335457a3712679bde4fc105cd7dbd6f49bfa6b486286d2dd9ae36df"
      "mk"
    end
    language "ml" do
      sha256 "eba541e084f66d455a395532dd364909e3b4c81e109163b47e7c580ae3cb9e81"
      "ml"
    end
    language "mn" do
      sha256 "8086c1b2945474eb846aee362e8830627b3bae76dc99776ad6cb3d5532cc981e"
      "mn"
    end
    language "mr" do
      sha256 "556520577fb4d1707b206def4d54a50519fdc1a707d5b77e4ff6af39c3470c72"
      "mr"
    end
    language "my" do
      sha256 "0af02b84a33842eb0efc8229760bea78a9bd1ee927e93513efe6f1c39b5a26a2"
      "my"
    end
    language "nb" do
      sha256 "a4684f324ef26da500e613bfeb5ac0a521b306b31c48990a77a64821bc55d730"
      "nb"
    end
    language "ne" do
      sha256 "f8af4bff06e0700a3eb20042d0ed787b6fd6b3cabef69007741f8ed8633ced03"
      "ne"
    end
    language "nl" do
      sha256 "a100f151b6ecf0e6c4f7f8f80112e982fa0ad71bb94f8cd2a4d6ddbec63c79e2"
      "nl"
    end
    language "nn" do
      sha256 "507b10d070e411d8d02a5c69cc602657ac5274ea2648983b00aa80643b2e519b"
      "nn"
    end
    language "nr" do
      sha256 "ba8a2ef41b708abd424e80e49207ed786d4aed33e15343d7edbad00bcb36ea68"
      "nr"
    end
    language "oc" do
      sha256 "8b1655e6c31b2680fed0bf06b2539a73f05862c080184ef4e7199f14003b8536"
      "oc"
    end
    language "om" do
      sha256 "14bb01020237b8cea2ea4a8896754d4104d4be4ce7d4c3c83110e4289183f1c5"
      "om"
    end
    language "or" do
      sha256 "ec4c60905e8cea1f7075758d2986abca32d4280ecd4645b5d879522c5279d243"
      "or"
    end
    language "pa-IN" do
      sha256 "11b4e7354e42b5f71482bdde3ea013809835bb44052324553ebf98ef35f62a53"
      "pa-IN"
    end
    language "pl" do
      sha256 "c44c07f5744d53e698eaf2541b67538ee54eeadc8cbf650b158d53e6a36bb48a"
      "pl"
    end
    language "pt-BR" do
      sha256 "367f210d9c4d7097dbe2e3b66bb324509e1f5c4657bd5bec095162d5ead9a762"
      "pt-BR"
    end
    language "pt" do
      sha256 "f6cd849c0bb7569e7763c0f3944b033cd1b4e4a871aa65241ff96e0821c3009b"
      "pt"
    end
    language "ro" do
      sha256 "f8848b409e08849061a6e790fbda99d3c50237d9d717fef2bc2067b9941423c7"
      "ro"
    end
    language "ru" do
      sha256 "b494ad643cb721f656b97ddd05f4008aaf893934df3e69b11cf92503739b80c5"
      "ru"
    end
    language "rw" do
      sha256 "5ef1b8951e9c6284ab7ed835216dff86a3666e3d35d1cf3a4956a732e177eef6"
      "rw"
    end
    language "sa-IN" do
      sha256 "3a9caccb93aafe1cdd9fe2856983f1d771563ec9940491dbc1b16a2b2d5b1440"
      "sa-IN"
    end
    language "sd" do
      sha256 "e421f18b8b2bd831216bdc286c9097307c89aa399f56f66ce3d850e1e5180d6d"
      "sd"
    end
    language "si" do
      sha256 "86dcf18938a3f7b3c10cd9999589f2db9d91a5f3a382770e244c529f55147d7b"
      "si"
    end
    language "sk" do
      sha256 "81d9464ba6a24f5621f19e87cc45153b08eb3865862ea9b15d7dd2b4e4f759a4"
      "sk"
    end
    language "sl" do
      sha256 "853969ee859c31cfac0f334f760a5fd58bc5b28392ed4ba397516be2c0e347af"
      "sl"
    end
    language "sq" do
      sha256 "ec47bac305ebb859974910a334cbb5bc09f92b91216230984a21d01c0bcce675"
      "sq"
    end
    language "sr" do
      sha256 "e1084c19e89e91d20d4d6bca5863964f1b5f4d9665be1ccf584f0ac301901839"
      "sr"
    end
    language "ss" do
      sha256 "cceaf304e7784cb7757c044e81d99b1f9c466cf19012995cf41d5940253b69a7"
      "ss"
    end
    language "st" do
      sha256 "7e6fb6ed845d642d08880b5a79d8109a054d6cfd28ef7a95d5ca9980b7ab3f58"
      "st"
    end
    language "sv" do
      sha256 "f29bfd2d500a99e3fe60a285756c96252d3e3034e97ca5472b1e85cb3ad86068"
      "sv"
    end
    language "sw-TZ" do
      sha256 "14f93548ca3a4df05c14678758cdb869213703aa5fe35b67f9dc6338dee2abb5"
      "sw-TZ"
    end
    language "ta" do
      sha256 "c72866aa5fd417fc13c849cf2b006b19c3d0eb6d61f77caacac49884ffcf70a5"
      "ta"
    end
    language "te" do
      sha256 "0cab72c0d7797776a251238b94b49a93f6e6598597ca0eab24e136e11fcb4e51"
      "te"
    end
    language "tg" do
      sha256 "d468ee73e6a31c0ab9e090d2a1f61aa44965e32897dcbf8c915b3b897d94efd5"
      "tg"
    end
    language "th" do
      sha256 "d6601d8d7ea5acb11bec671c42082d42ccc7757c6657c7e4d7483eecedf8bc84"
      "th"
    end
    language "tn" do
      sha256 "e0ae0e5e3b79b7ab86e1d035f30fee27c484add0d5582e07b38d285ea540eee1"
      "tn"
    end
    language "tr" do
      sha256 "393eec21d13bd7a7174fe0ae8efad23bc8458436b194a0d49b46577eb0418899"
      "tr"
    end
    language "ts" do
      sha256 "198deb45c4323c57ca57cc8ef54f1455c6fc7dba893ce62378877ad10e06d8e5"
      "ts"
    end
    language "tt" do
      sha256 "10d2b8f383777cbd3d81f4292eee6fe2815e2b601d2f284e3ff1db7c663f613a"
      "tt"
    end
    language "ug" do
      sha256 "9a6068eabf8f00729b2aa2eeea1d77ac8b614a7f34a453a01a0c8a3e7e96d90b"
      "ug"
    end
    language "uk" do
      sha256 "85434da2e891d37a68931beec6bd0bd56f1cc697c1d90491ec0fc93b0675459b"
      "uk"
    end
    language "uz" do
      sha256 "6d45ac1fa461fb2cb296cc64077803f3b729ecfd343bc194e2601e8cc3c81570"
      "uz"
    end
    language "ve" do
      sha256 "0c09515a48b171f3ec4c7cd04ac4244431fd9d74c184f05f1ea403df260be81d"
      "ve"
    end
    language "vi" do
      sha256 "1073e3b0bc796850e22cfb84f03a03209d1de4e52c580ced68215f8be9c2a502"
      "vi"
    end
    language "xh" do
      sha256 "8efae61c360dbf633a49ad8641717e54add32c1bc77d43bf424d63a17d4dff63"
      "xh"
    end
    language "zh-CN" do
      sha256 "f44bc8ad71c8a624fb2751bdd803e7908e3d043f58ffc11915c5828ca6d482df"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "32a4bb1a39ff97e51df190b8dd8ae5b9202627db593fbd1ca848496bfaa85afb"
      "zh-TW"
    end
    language "zu" do
      sha256 "137176d47b3648baa9a6ed7c303dba7a9d7315faa778ae5229bcdb5a06dc2227"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "b16697176ccf2b7c2dd110ee97e948211d0d3a7eccc78a03fe269ca44f600df9"
      "af"
    end
    language "am" do
      sha256 "5d26556cfc60e10e1b17097fe80afd37b2f090b1655ba2cf6446f9a0c1ba68d6"
      "am"
    end
    language "ar" do
      sha256 "25ebaecaa681b173ace70eb7e7b655f95b627cdf59459b9b1fc1e81b95d64bc4"
      "ar"
    end
    language "as" do
      sha256 "3a7d204b241c299772e849e5f8fdfec60f5261a5040bb965d1029bb26c370d5c"
      "as"
    end
    language "be" do
      sha256 "33beacb08df2d8a4004c4ae50b5dc978a5d4cc8e0bfc3e1e1115b2066a26ad30"
      "be"
    end
    language "bg" do
      sha256 "0d6c10c1fe6be9087dd52ccec781d755fc98d7e8872c91e34d2e05dbf0e0966d"
      "bg"
    end
    language "bn-IN" do
      sha256 "877c5326220cef71c13558451315ba37fe4e6c1f13948f65f38b6a8e37da3fe8"
      "bn-IN"
    end
    language "bn" do
      sha256 "6e01939ca6c1c980aae0efc4da0fe71584a083a4327a4015265f5bda11013e86"
      "bn"
    end
    language "bo" do
      sha256 "bda275e74c1cf35c2e7f6227a93c6a4b7a45f8985409657d73c151780ed05fb8"
      "bo"
    end
    language "br" do
      sha256 "225c94f4b46835fc2ebe5260dca7b3197bf2705c63df07f1f3576c9c3e1378d4"
      "br"
    end
    language "bs" do
      sha256 "35db318daacdcd9b2c774a45420b4e4102348f46687cb35cae5e4a7e7492fb9a"
      "bs"
    end
    language "ca" do
      sha256 "59a1d170b55904b872fcd35c46f4605baa611a8cea11be950bb4ff60d0580a22"
      "ca"
    end
    language "cs" do
      sha256 "6176cc8e87adf632d1b1c8c9141767c7839c9a31a63b08a660d0897f4f46c28a"
      "cs"
    end
    language "cy" do
      sha256 "ef7868166be0e680e2d0ce7c62e6b6d15508266963f2e755693f285c500ee738"
      "cy"
    end
    language "da" do
      sha256 "83599734162b92f9701752b5771155c1a8c8b934c0f78510b34a2ea1ece8b057"
      "da"
    end
    language "de" do
      sha256 "f95d74d12206c993438646c14fb9440bb22f9896ed0d558f004b6075fef25c95"
      "de"
    end
    language "dz" do
      sha256 "9e5c98494717c4413aa799b5ca0386372a9ca0d7f20f7c09c7d9fc0a3224ea67"
      "dz"
    end
    language "el" do
      sha256 "8a4e73486d248774bc2961ef6d7746444aeca9e9cd6a566eacaedb97936553e0"
      "el"
    end
    language "en-GB", default: true do
      sha256 "7df380ce4924cceb7d638fc44ee327a12f264879b532272ce2b7f6556027348e"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "6992c09c001cf6dcc7f551f2b6a2b461898914b67f7898b13390d0bb96acea89"
      "en-ZA"
    end
    language "eo" do
      sha256 "4288a47791208f5a6dc1fc9ae3580c38ad9043d3b239a53ae9f6db07d2128109"
      "eo"
    end
    language "es" do
      sha256 "a51797a28cc76010dee90ac51de49c5309271f0d8857b97f53444c947f7757b2"
      "es"
    end
    language "et" do
      sha256 "381fc5a1d828311590976f30e78b1c695844316e5cfc8f773d137dc9eb78b50b"
      "et"
    end
    language "eu" do
      sha256 "13a700f9d7a3dfc6768662070b988c19b2e30d0c29151dd294ac64c4295663e3"
      "eu"
    end
    language "fa" do
      sha256 "fefc5ee6460d90cdd05006570e9d8c7f8dfba246d1e70d4fc5a6ffe1e645e001"
      "fa"
    end
    language "fi" do
      sha256 "6521ca44feb38017bf7d03e20aca4159c7dc190e6ec4e834d5a6b1f126e384a3"
      "fi"
    end
    language "fr" do
      sha256 "11cc20c12b96a742ccd948f7fc3edec17bb6e4603b7a7940ff770e4d2d960313"
      "fr"
    end
    language "fy" do
      sha256 "d54620c7027deb2d9502cfb0edf28b423435f0c4b3909fbe045e0c2c43d370a7"
      "fy"
    end
    language "ga" do
      sha256 "4b9bce46e089413987b6e69e486381f2a29280de0c276f1fb6fb9d34c5522777"
      "ga"
    end
    language "gd" do
      sha256 "390b8d393d1139bbc7b8477756b82082df33ec2e16efdc780b0e30a88c92bdc3"
      "gd"
    end
    language "gl" do
      sha256 "4966619c4ed024d64be9ea7b26b21fb0cc00c5f646b92a909748ffc7e7f0940d"
      "gl"
    end
    language "gu" do
      sha256 "7ef68447cbed2b42281058fbe02b23da355d1fa119a9a8c95cdeeda73811bc60"
      "gu"
    end
    language "he" do
      sha256 "68b3ad700c85ba778018c3b5542cb81a95fba863c3fe9fce323ca75fc15ff584"
      "he"
    end
    language "hi" do
      sha256 "5477e18249fe2bee0c2e9bab24442294b420f8fd3e0b6f3c4adf2802f9b68051"
      "hi"
    end
    language "hr" do
      sha256 "1d797585035383295cfdc8bea0625de047e8be687b939699854dc25c95b305bb"
      "hr"
    end
    language "hu" do
      sha256 "dd61df9d3bee82b41b5c656b9efe93dd0897fdee499f7c8fd0ae86a008f7b20f"
      "hu"
    end
    language "id" do
      sha256 "50f29e5d129bba2f2285020c5d96a6a31dc765a324ac7bafdf22d6fc58d4310d"
      "id"
    end
    language "is" do
      sha256 "788d62be9507502b6cd863f14e79b2791c15df3bc230b012bb6c7ea934d42711"
      "is"
    end
    language "it" do
      sha256 "7a8195bdd6680f1567387e0e9ba729ace15562c12408d1dafbe7dbcc735e7c92"
      "it"
    end
    language "ja" do
      sha256 "e2664d02d5a652715c7456675d15aedb99d88b0fbfe17e2094bb5f2aa7ad9e68"
      "ja"
    end
    language "ka" do
      sha256 "8189bdb2bc013c9e9ff0059d6a14f9045c023dc4d9b3c39d633fcfaf0f4ef497"
      "ka"
    end
    language "kk" do
      sha256 "d668c606413e0f0c63cf866cdb61416012d750126d2eb10e11b07a9d71b856ac"
      "kk"
    end
    language "km" do
      sha256 "7938f794d2c3b0987f1a41633449c665b1741c8f22d1c97b1c7f18aa6dc71d2e"
      "km"
    end
    language "kn" do
      sha256 "a5e93a8c4c08b5cba7bb232e31e91d7214efd4585a6aea0e8e8d598d64ae941a"
      "kn"
    end
    language "ko" do
      sha256 "021becbce795f0c0c7bf10a9973dbec7e8aa4ba5f6659376f6861b0d49dd57cf"
      "ko"
    end
    language "ks" do
      sha256 "9a17759ac3b7a304b863d63fc4ebf0b0c49e35637f6daa65170a6b3739387d9c"
      "ks"
    end
    language "lb" do
      sha256 "f1bb06669d0e0419d1e63e54debba8197694129ea83926416ef2b2d624d51783"
      "lb"
    end
    language "lo" do
      sha256 "7513caefb63d7a2f6a18234d1133405757a1a7e1735c2832aba11c94449a9c20"
      "lo"
    end
    language "lt" do
      sha256 "d3e44107d8ebfdc9d22d7f448c704d52cf05ec60c211242c8707e3a850442c08"
      "lt"
    end
    language "lv" do
      sha256 "3776ac584661bc806134e512abdc1d7c3ba0d08d913aa114d89bd0c65954025d"
      "lv"
    end
    language "mk" do
      sha256 "3c070195db4df0448c2b44b31d5d5edd2853ac3e582e9c61243ae7bf6e8ed695"
      "mk"
    end
    language "ml" do
      sha256 "2e104bee916bc1bbba34c8ed880740ca9381909a1c08f758130432849016369d"
      "ml"
    end
    language "mn" do
      sha256 "8c9221dcfa551f9524376b8deb2ad6e993a471c87bb61e04186c023e65373bcb"
      "mn"
    end
    language "mr" do
      sha256 "639a059309f224a3f6e21adfa6f5c96300851036e160e95145cf61e5ab9d1daf"
      "mr"
    end
    language "my" do
      sha256 "e93bc0791a21462127127601ead7fd41d85bffd8d12213ba54b7eea3c342bd63"
      "my"
    end
    language "nb" do
      sha256 "c224da2ea2fe043ade671bd2a75fcc6cf737666cc59f2de81c598ccf83d73845"
      "nb"
    end
    language "ne" do
      sha256 "bd0ade5460629e6b4cfa62574238062e6532b91290a9f124b1668552a3a6f5b0"
      "ne"
    end
    language "nl" do
      sha256 "d40b94b6f30cdfc8c800daddc9be2d092a75d5f59ace52c86df5404ffd8b3bea"
      "nl"
    end
    language "nn" do
      sha256 "a310845e2449b423b4430e7d9423dcdc34d458808c91c73e545fe7efc9493b8d"
      "nn"
    end
    language "nr" do
      sha256 "99df20aa12d8698a2508af80095e499f055aaad4ffa7f71465853522816c132e"
      "nr"
    end
    language "oc" do
      sha256 "e9a74d15b4064d79586fb7be37de5f4b4d138ec1911e7cb3d626f901553f28db"
      "oc"
    end
    language "om" do
      sha256 "d319388c40e1f02649f4f3e5d95e2c33c8cc571059eefa9840d311b9ce01cc32"
      "om"
    end
    language "or" do
      sha256 "02a5676ff396bf0758b6792f1eb53acef9a2fa819e7e0a09a51a5617c4daef07"
      "or"
    end
    language "pa-IN" do
      sha256 "e0fc124a21574fc027a30eefa4245506b4b3235d685001712c84af6b2921e835"
      "pa-IN"
    end
    language "pl" do
      sha256 "309bb08fc64a575c0ee26724a01746aafd70375de243ae9e785fd09f5acf84b6"
      "pl"
    end
    language "pt-BR" do
      sha256 "ca45fa2fbe1d27bb91abf99ad367118498fb8724e6d5069fb885f5f41a235753"
      "pt-BR"
    end
    language "pt" do
      sha256 "cd46a293770756717636bc61dffd5e3833d308177432578d65a8e2d1c22edbb7"
      "pt"
    end
    language "ro" do
      sha256 "68ab64738d2c08c5b68265d0d352d4b48e6cc77bfa3fea031fd540e08191d6c4"
      "ro"
    end
    language "ru" do
      sha256 "e7906db691958a11fb38f0889260c0687572bab675ed1b245aef79baa0f2813b"
      "ru"
    end
    language "rw" do
      sha256 "5ac718552be4a6cb7a7569e124563ce9392740b017a504d270e2258e79f16fd5"
      "rw"
    end
    language "sa-IN" do
      sha256 "ad231fb2157f55320d7cddc29119e16263e0d0cf1c110fc75b95399ec6dd22bf"
      "sa-IN"
    end
    language "sd" do
      sha256 "0f1ab82e7412bc2620c3a2971a539ca2a834ea48cfc0dd3330888ebab61fe26c"
      "sd"
    end
    language "si" do
      sha256 "912c90b8d5a66f2b88802bfbc1cd1cd61f5a721a6ef9f858073aac98b76374ac"
      "si"
    end
    language "sk" do
      sha256 "eb65395ae6e7e53295277490e5ec2f7645d72d856296acf09d6752bb4babd7a0"
      "sk"
    end
    language "sl" do
      sha256 "a8598f00347b3c525ebc11e10d2fbb6b5273eb18b385ab0908ddd90f08eef904"
      "sl"
    end
    language "sq" do
      sha256 "db4b2b40553cd610cf35609f244a69dda78d8954301f32f71679f0bf50f041b9"
      "sq"
    end
    language "sr" do
      sha256 "04a992dc084e03e1b1cf0d03e22e9e1f2dc9ead73ede8088d8aa8a55a77dc0ab"
      "sr"
    end
    language "ss" do
      sha256 "ae7b955f11ea3f57b555d55edbb5f918003571ea497933cb9f61233c3814de1c"
      "ss"
    end
    language "st" do
      sha256 "e831584e184e3acc070bb4bc9d9d988a398fa470026d9aa79291d61f9ae2e798"
      "st"
    end
    language "sv" do
      sha256 "c4be84a1b03135cbfe684b5ba4b1718b8a22adcefef00603b3166b37bab3be42"
      "sv"
    end
    language "sw-TZ" do
      sha256 "659dbb45cf399cbefd8344b929a9d667daeb2c87280295b84a860a2448e7d302"
      "sw-TZ"
    end
    language "ta" do
      sha256 "ad1799920e611f573df10f453066113f6ef892109f435b1b37410200047e4a20"
      "ta"
    end
    language "te" do
      sha256 "94ff9b17e375c8ae3ba3f9465063e28f472da3ea25c26d9b3f6149de8189ba94"
      "te"
    end
    language "tg" do
      sha256 "b1f51cc2e2a1ec81574fdc7d8b3358d92be1d533775bdad45efae6588c631d6d"
      "tg"
    end
    language "th" do
      sha256 "96ce4dbf96f4fae35e1aad7fbc3d854649e9ff3068f14c8fbf981f2442837fe0"
      "th"
    end
    language "tn" do
      sha256 "6d31ec3b4c0729f1d14e45b622c6ba516bce5246128e01c68a45eb3ea6c4abbe"
      "tn"
    end
    language "tr" do
      sha256 "6d463f162e832ada676564437ca1432c4252af004ab65b7cd19a54fe3db892f3"
      "tr"
    end
    language "ts" do
      sha256 "641c2ba5e95d4d41c0e7b927a4fe26a6f5d7b62798eaa68bc18e40a0211f265a"
      "ts"
    end
    language "tt" do
      sha256 "49bdc382bf88a33cef85bd5c965a483b8a5af6865b979e53466e6f58b5f97135"
      "tt"
    end
    language "ug" do
      sha256 "4a89529db71fac14b6e3bb05ab120f5e62360fdc4b84059f1da3b5e5909435b5"
      "ug"
    end
    language "uk" do
      sha256 "c7908de05dc7e0be734b99be872a8bc68768d207e8a865ee66563a6629339569"
      "uk"
    end
    language "uz" do
      sha256 "ff24f2ead901df99025ecfbc654e44bae94fd6dba2446ff7db1686ea39572d06"
      "uz"
    end
    language "ve" do
      sha256 "51af4a598d92c387ea260c41cd0d3d25179a4b168560a70e8a94da9cd4104098"
      "ve"
    end
    language "vi" do
      sha256 "7577dfb504d1cd8fe9368eb7fe9c3d03815fb26c60e2e619001faa6de1382363"
      "vi"
    end
    language "xh" do
      sha256 "101d13c0784e66ee1136c5c0758783521d7341b06c3a7bb5133bbfcf4f20040b"
      "xh"
    end
    language "zh-CN" do
      sha256 "2196f48d20ba771a77c07916b4ce0192bc245d71a4e78e3007858dc1c880706d"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "8dc13d9ec8681ce48b30b82b893a97dc8b520c6f8ca6b58bcb962d1d40395bae"
      "zh-TW"
    end
    language "zu" do
      sha256 "bd3543e6207787607f7958f7cfb2a9b55b6483cd93fc5f349f98c997837fd148"
      "zu"
    end
  end

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}_langpack_#{language}.dmg",
      verified: "download.documentfoundation.org/libreoffice/stable/"
  name "LibreOffice Language Pack"
  desc "Collection of alternate languages for LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    cask "libreoffice-still"
  end

  depends_on cask: "libreoffice-still"
  depends_on macos: ">= :mojave"

  # Start the silent install
  installer script: {
    executable: "#{staged_path}/SilentInstall.sh",
    sudo:       true,
  }

  preflight do
    File.write "#{staged_path}/SilentInstall.sh", <<~EOS
      #!/bin/bash
      pathOfApp=$(mdfind "kMDItemContentType == 'com.apple.application-bundle' && kMDItemFSName == 'LibreOffice.app'")
      if [[ $(mdls --raw --name kMDItemFSName --name kMDItemVersion $pathOfApp | xargs -0) == "LibreOffice.app #{version}"* ]]
      then
        #Test if the .app have quarantine attribute, or if they are already launched once.
        if [[ $(xattr -l $pathOfApp) != *'com.apple.quarantine'* || $(xattr -p com.apple.quarantine $pathOfApp) != '0181;'* ]]
        then
          echo "Silent installation has started, you didn't need to use the .app"
          echo "Add language pack support for $pathOfApp"
          /usr/bin/tar -C $pathOfApp -xjf "#{staged_path}/LibreOffice Language Pack.app/Contents/Resources/tarball.tar.bz2" && touch $pathOfApp
        else
          echo "You need to run $pathOfApp once before you can silently install language pack"
          echo "or you can also reinstall libreoffice with --no-quarantine parameters"
        fi
      else
        echo 'Silent installation cannot match the prerequisite'
        echo "To complete the installation of Cask #{token}, you must also run the installer at:"
        echo "#{staged_path}/LibreOffice Language Pack.app"
      fi
    EOS
    # Make the script executable
    system_command "/bin/chmod",
                   args: ["u+x", "#{staged_path}/SilentInstall.sh"]
  end

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten
  # and that for this cask it is indeed this simple.
  # See https://github.com/Homebrew/homebrew-cask/pull/52893
  uninstall delete: ["#{staged_path}/#{token}", "#{staged_path}/SilentInstall.sh"]

  # No zap stanza required

  caveats <<~EOS
    #{token} cannot be upgraded, use brew reinstall --cask #{token} instead
  EOS
end
