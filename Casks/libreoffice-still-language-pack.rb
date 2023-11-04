cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.5.8"

  on_arm do
    language "af" do
      sha256 "a7a914097ab83ff802d51821ad3cbf16ceddddd2e7f9532f7d83a8e5f31d75c8"
      "af"
    end
    language "am" do
      sha256 "5920ec5ffb4d9e6cab48c2ae340f384acab2815a99e3a975ab171eae1193ff86"
      "am"
    end
    language "ar" do
      sha256 "e56cb34817d56718ec26921fbde19ec928c41be793a0f695a205b1837bdf87ef"
      "ar"
    end
    language "as" do
      sha256 "ca09f6453fb889447c8055d504a81e2b6307b1143a75f9477eee85778bd398da"
      "as"
    end
    language "be" do
      sha256 "47fb4a3a2e2dd7cad4bee49f6153ea3c0b021e8ae4b124b2decfa9d25313c523"
      "be"
    end
    language "bg" do
      sha256 "9846c60bf40587ee35af55ba2a92d734e60f1f060ae55491fc91831154c4226b"
      "bg"
    end
    language "bn-IN" do
      sha256 "3fe7d2ba15a417c81c1684bf7d3fb6e4f8b35c1df6250d3b4813379a39117243"
      "bn-IN"
    end
    language "bn" do
      sha256 "50b6a8c74931155cd08c13f65cec2c7cf9f4376155c70b43d16efd20a289300c"
      "bn"
    end
    language "bo" do
      sha256 "81ae4ff4ba5c1218963e85a5880f20a1b1c75bdffe35d7bcd304a11669ea5bf6"
      "bo"
    end
    language "br" do
      sha256 "2dd8bc58b4b50af6a10f882551cd88bd2efcdc291a25c7e65b6ef484e59ec5c9"
      "br"
    end
    language "bs" do
      sha256 "b2f2fa02c9fef04e1e710274fa8ccde4204fd0c313df83b9956d5d6c8e1e1813"
      "bs"
    end
    language "ca" do
      sha256 "43b7e62c81cde1d2e5feddbb322d6f38a271d7d1086807726c1da004e3d1cf72"
      "ca"
    end
    language "cs" do
      sha256 "731297ab3958a8eccd6d88155abbd38e904ebeaef7508613d5b5b43df172b38a"
      "cs"
    end
    language "cy" do
      sha256 "6043189d0f73ee4066f80d8a2dfbe78b0cc702b31e291c8296845d82642b05f9"
      "cy"
    end
    language "da" do
      sha256 "f6938e7e31c0e8dee65ca15b52fe0d85668fc46f1fa9df99a7a207920ed56c7c"
      "da"
    end
    language "de" do
      sha256 "af9079022995c731e810205f7b635175cadbf01baf137367a9625a9bbc6a5b40"
      "de"
    end
    language "dz" do
      sha256 "db8aa384928d40a63f1f23eb4b6b6cddf9b800894e7010b6e7a0d4e2a3ccaa5a"
      "dz"
    end
    language "el" do
      sha256 "dfeb5767d4f9d1b321e97b5c6e55f6bda527d960e0681757fd639603f74df712"
      "el"
    end
    language "en-GB", default: true do
      sha256 "ac1c987198392cc6a813f8e459a4d37a35590554e39b4f1a38eb8c233785fe38"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "ae53fd241e891c9a53b8a62bd2c639b1ba5e4637cb706fc0e6f1ab99386bc494"
      "en-ZA"
    end
    language "eo" do
      sha256 "e8613a8557849c6d194263e581d5d6614f5876f2b1d9d6678ad4eae10ad29b5a"
      "eo"
    end
    language "es" do
      sha256 "18659e21627050234b73dea406ea5bc4c8e0b802982bb390d621825d9da14374"
      "es"
    end
    language "et" do
      sha256 "e8f9a512a48e350020d0b2ba78978521671e75e359fa91bd733d53d8e88b668e"
      "et"
    end
    language "eu" do
      sha256 "a497ec1687a8ac4aa89aa9b5f6b1c94805a439453c93157f7c0424bb002cf458"
      "eu"
    end
    language "fa" do
      sha256 "61155238a411b6cad06b9cba6ab282bcc54b9fd6f900515b702c61154225eb5d"
      "fa"
    end
    language "fi" do
      sha256 "05d0525e014e341e2b3ad4bc0a6b7fc2ce39b90f218d3a798a5c39613597cab4"
      "fi"
    end
    language "fr" do
      sha256 "219b678f758b37bad359072d1f8ae2d6b9c6ca57c231c67ac8a2c4de8b046391"
      "fr"
    end
    language "fy" do
      sha256 "7ad9a64bb83ea26b31d5467a804085fe904ff3a2530503c899485dbd286d2040"
      "fy"
    end
    language "ga" do
      sha256 "96409ac6cf64f67a2db4c39219e67773b9ca1fb2e013656fcabcbcfa71320fb6"
      "ga"
    end
    language "gd" do
      sha256 "4673cd0ac1a049923db3e8a7721d95c5d1cfe0b28ecb5e9f6fa2c4c05a419a38"
      "gd"
    end
    language "gl" do
      sha256 "54d9bff9ded46c91b91e7dafe155aabf7132b2e31078eb08d39c0f224aa21e95"
      "gl"
    end
    language "gu" do
      sha256 "47231f5cccfdd98eecf57e9024b2dca35b288eec75a2e9f4c374f8da132ce2cf"
      "gu"
    end
    language "he" do
      sha256 "7d5b3c558bb805c1700345273f472a3c77806cfad0317629846b3e149e0afb1d"
      "he"
    end
    language "hi" do
      sha256 "5bbb9390d003680a1b5d331e75ee7991835f77523c17321fb5ff7ac6aa7b275e"
      "hi"
    end
    language "hr" do
      sha256 "c7db58651f7a02b57e796caf0eb6add8cff090d0e3455283afd83f333fb77c57"
      "hr"
    end
    language "hu" do
      sha256 "33ef7ecfa1b2ef49afbeb84130ef4b713af43dd3ba8b9e3043c93f860e897ce8"
      "hu"
    end
    language "id" do
      sha256 "752f9fff0088298620ca83c4841a9b1cea5fa7fe0bea76588fec8e29e6581c88"
      "id"
    end
    language "is" do
      sha256 "71fa7f2380db4dfd25914b525e63675e47853e5eb01db6f361971c2d55a80295"
      "is"
    end
    language "it" do
      sha256 "47c438fc96980f6c1da7cc1f67cc0914148d92573d27a4d19b63b42e2982f1a1"
      "it"
    end
    language "ja" do
      sha256 "588681a8a1bf9fcc2bcf48766ca36d8b1cc9e031d50aa9fbe367fca73ec55c0f"
      "ja"
    end
    language "ka" do
      sha256 "b3db66fa7b1522b1ec360ce2acf12fab35d3b355538b18dc1ea994e5e249f723"
      "ka"
    end
    language "kk" do
      sha256 "ad25b7bbd7dc3d6d445a1dce550c3b5e5225fe880d2a9c500288c2b9a0ec1c75"
      "kk"
    end
    language "km" do
      sha256 "0be8c1ae9a1e0103f0d35c36511161c1a66a115bb34bfe496e77e5f6574162cd"
      "km"
    end
    language "kn" do
      sha256 "19cd2c2e944bf39fd68b99769536d503fdf3988e81681ab67b4ff4095e97396f"
      "kn"
    end
    language "ko" do
      sha256 "40d153dedc60d8c2c8a77d6b245204a6adcd45a53922a9915d7e4ed4f58c17bb"
      "ko"
    end
    language "ks" do
      sha256 "dc3dd96c540d2f799b7fc767a13dbbee3b34147f3c73b903f06e86ce6d248024"
      "ks"
    end
    language "lb" do
      sha256 "b439ca474615c601aa446338ac0e7b3134fbcae4810c3730d5d53b4dfd048e73"
      "lb"
    end
    language "lo" do
      sha256 "55414dfcbf4b463d6ed6a68103ef0a6afceb4a51b551e5dfcfe84373a7f8ef50"
      "lo"
    end
    language "lt" do
      sha256 "938b4531ccc1baf27ed50ca4bf750dbd8cef76cc1158ba5f6fce80c79f07b0f1"
      "lt"
    end
    language "lv" do
      sha256 "fa97206965e964db4bb3ed4c128ca38be26b6b7e51c75a75e4df9b13c88de448"
      "lv"
    end
    language "mk" do
      sha256 "7a8da148829dbc254ff15fda7c2b7810ef97f209e99589d8666a3795e35add42"
      "mk"
    end
    language "ml" do
      sha256 "253d64fb2a23f8e74cd300547ddb7ca65e187120beaf0058b444484fec0a4e98"
      "ml"
    end
    language "mn" do
      sha256 "1414ce2f06705ff9d3e8b9dbeba5e6701dd6c69ea9a4a228ba9f804e592c6a94"
      "mn"
    end
    language "mr" do
      sha256 "40a2978a89f7b3986129fad4bbe73630840143405da30ac84a1f01f585a58f72"
      "mr"
    end
    language "my" do
      sha256 "a416ed288f0ec27fc1ea641dd50d75bc99f8b63e3e0607e089135261f07e58ce"
      "my"
    end
    language "nb" do
      sha256 "8360944eaaa59bc4879ae917b16910e6604957bfe37a8c0455615645b9211bb8"
      "nb"
    end
    language "ne" do
      sha256 "fc81b70dde58492256e40249bf81bbe6d78c67ceef049e986e5fe8a1022c81fa"
      "ne"
    end
    language "nl" do
      sha256 "c9716bade2f63b206550aa184579c838b83d420a581c6dd94e3ad639eae353b0"
      "nl"
    end
    language "nn" do
      sha256 "6fc18eadb145e9297059bde0702bb4d204a9bd119f9e7c98cd74087bd920db3f"
      "nn"
    end
    language "nr" do
      sha256 "656af4142799a6d2798bed21de711e62306ab2ecd612d74194418b89c04911ee"
      "nr"
    end
    language "oc" do
      sha256 "0e0fff6336b3c63101a79fb2eb60082d60eec2933da82cdd81be0a99e9bd281c"
      "oc"
    end
    language "om" do
      sha256 "a7c640c5e50dbf069d2c90e4d55d480f7cf4fd6494472ce25c5366f1e402acaf"
      "om"
    end
    language "or" do
      sha256 "875e0cd4373854ae7c24485f3bdb575398cadc3d3417c4f9162fd372f6e4a750"
      "or"
    end
    language "pa-IN" do
      sha256 "91bc4ea83375dab4e0b5c8eff8d35ce305a2eb303d823eb584c6167f5d711196"
      "pa-IN"
    end
    language "pl" do
      sha256 "1226b19fb291921293c4b05ee030ce42a951820292e75f5924cef72df64a6730"
      "pl"
    end
    language "pt-BR" do
      sha256 "18513fcf82d2a2852ac9ec727a8622954f4b1592453e16e90630ec063fca7d8a"
      "pt-BR"
    end
    language "pt" do
      sha256 "206c28701bf921014f200e0a85eee86106d752789945dabef1a3323ed0dab1f2"
      "pt"
    end
    language "ro" do
      sha256 "85333202099b59c626afa37daa4483fae18ad87dbe3405432326a3649f559280"
      "ro"
    end
    language "ru" do
      sha256 "17f851c5a841ec317febe49e51d7797b2f74ae8a311e7fee743a77f59e350a77"
      "ru"
    end
    language "rw" do
      sha256 "7879b04d8c79647642b343f71763c8c6117b9f6bdc5a987bfc6797a570e965bc"
      "rw"
    end
    language "sa-IN" do
      sha256 "321311c11389e2d93cdeae1e9572a66c2fd949c7ba630582c6cde2aeaf829bb6"
      "sa-IN"
    end
    language "sd" do
      sha256 "ff4de122eceffa69167ddd4a1df7cbeac0a2ead8133da7cc37f8db521fd8bf23"
      "sd"
    end
    language "si" do
      sha256 "2ab5c453138ffa3edefea2ad62464e12cf4e34d0edf8931586c4a4b57bb88ea3"
      "si"
    end
    language "sk" do
      sha256 "fa9f0d7169fdf218c3d467ef578fe9ef69e2e3fba8cf56bffb01a4afcb0ab067"
      "sk"
    end
    language "sl" do
      sha256 "0d844c8d7466e8f91df48c5f646345a21fc9b3103dc4a5321960851453f9baa5"
      "sl"
    end
    language "sq" do
      sha256 "6912e83f0e89d6c1965946d243fc316e31f6501e78bdf118357d7bb47097d80d"
      "sq"
    end
    language "sr" do
      sha256 "f4c416821d982490cc34c90dd1214a486b2da877e9024a8e2e9995d28f9c6d4d"
      "sr"
    end
    language "ss" do
      sha256 "3725b0ceb90ce56d5f86f5516abbc34fc7fdb72a94b962ee3c2a214cd853073e"
      "ss"
    end
    language "st" do
      sha256 "ddea75180750f9e4eacf33bfb1ff770ee16db4142e2ee9b4ee44091d3fe950de"
      "st"
    end
    language "sv" do
      sha256 "842ace68cbb81db78f47e6cb8b2b63df4b1459b1318ce766d2b573a74f9b86b9"
      "sv"
    end
    language "sw-TZ" do
      sha256 "f3cc43190eef4e807006a847751143637ef43757221d6da5deb6b7e9067e8fad"
      "sw-TZ"
    end
    language "ta" do
      sha256 "2629663e7b70a6e9f52ac02594d125b68d6daadeb4ab89596c0b5c871d9a84ba"
      "ta"
    end
    language "te" do
      sha256 "caac83edbe7e56d7cef91bf866eecf269864ecceeaeefee91801ec7c7f6e24c2"
      "te"
    end
    language "tg" do
      sha256 "b1cafdc30a40e151fc6eb2d322f1bbfa6304821c17ebcfd139c15a41a2bb4347"
      "tg"
    end
    language "th" do
      sha256 "f4e0e3d6a1790ab7739a61c1386a183d64c336b4bf5d724f82a99ff80243cd85"
      "th"
    end
    language "tn" do
      sha256 "16fa5acac0a46001bc9fd7b5a9e78f9c6492ee9720f073a85433d01a70723a70"
      "tn"
    end
    language "tr" do
      sha256 "01166bd0ea685f8ff7c6c732d638aad76c5946c93ea5280eb092135042148197"
      "tr"
    end
    language "ts" do
      sha256 "9954829d9f5e89ab484bfe0222a878a3358051ea278b398acfcbec190af40ee7"
      "ts"
    end
    language "tt" do
      sha256 "07988818f4dc92489fedec75d3fc03a099f9749aadf1a8f993fc7fde96525251"
      "tt"
    end
    language "ug" do
      sha256 "4eaa8a542f76d5e121d9dbaf1b455399015039c46a8b77c01e9209caf8ca3adb"
      "ug"
    end
    language "uk" do
      sha256 "c76c0d58bee8fbb2f602af37c60be46869ffa6dab58d4828a486976b890d8025"
      "uk"
    end
    language "uz" do
      sha256 "4c4b7cec7b065b2f526027fd5cca07aa2ee19452c50d9beb33e4ba205584d804"
      "uz"
    end
    language "ve" do
      sha256 "3d041aa16bc3794c17b59882a18bac09715c733d1ef4690949b6c70c637ae3e1"
      "ve"
    end
    language "vi" do
      sha256 "186070b163c3714757e4393481e3eeeeeca7210c753af1817a0d8e42079bfb63"
      "vi"
    end
    language "xh" do
      sha256 "ce8a0f2ac8d9ea2932588bee8e6cf8f8771d7e36915603ad6df15c4747c4e5ff"
      "xh"
    end
    language "zh-CN" do
      sha256 "494ed4fdad8703890dd61a7fdb9367a8994a0b41e93351a9ac49ba03ba4c15ca"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "cf89f8b772031e78be6dd44a80453c1beaa36c6fd78ec1bf0f3dae5ed8d1a28c"
      "zh-TW"
    end
    language "zu" do
      sha256 "3119fbccdbc363fb3cd1a96070990fb408220f0d05bd0134f43711c8d248a534"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "9d7ded364770eb03a9763fa42ced5b354a412629f085e51e53a8f452d8d6c672"
      "af"
    end
    language "am" do
      sha256 "ef2180d2059d534b64519a36957fee3a6df3285c114b78b877f7c55db40a1c56"
      "am"
    end
    language "ar" do
      sha256 "52b25cbf2fd1c4819e6312cd9b98077497b4bbfb94ae403d9db9921d7a4df5d5"
      "ar"
    end
    language "as" do
      sha256 "28c9952a20345579776a7eba71158b7c7b62312eeab3bcd650d73e8d67147f1f"
      "as"
    end
    language "be" do
      sha256 "c18f734b20c67a492d332f1ffa6a1cb9d54e8060e40e34a49bdf5ac4c7feb462"
      "be"
    end
    language "bg" do
      sha256 "656dd8515235751f38a32a17ee7e7b3ef1502891c05b763fcdf762926f3195c3"
      "bg"
    end
    language "bn-IN" do
      sha256 "6900714fa019810543070ef13b2c7177967788ae94e53807a1a338541752cf05"
      "bn-IN"
    end
    language "bn" do
      sha256 "bd1b475758380aa02725d9f4a6b52de1fffbea1b929bd25ebabd5fcd20191501"
      "bn"
    end
    language "bo" do
      sha256 "d86f9869763f3af2def3a40513e9c742389641b1cd7b902edc60704552d9bb58"
      "bo"
    end
    language "br" do
      sha256 "0f64adc6dfc36197caa503cb6e4825b3567f805270e3210fec72014771570f8e"
      "br"
    end
    language "bs" do
      sha256 "7005ea5fa9503d917945fa4a28d08a6c152ce3cd2f0910bc8e16a51cf50f7545"
      "bs"
    end
    language "ca" do
      sha256 "600cb9c8e7c2c8f14590b3a718be7f34b13ccc72ea80de0e95d274b0d053f415"
      "ca"
    end
    language "cs" do
      sha256 "93c91be0b7c0a3c2241f41a554e64974ccc0e4280224f39aea059a51fcb1e3c3"
      "cs"
    end
    language "cy" do
      sha256 "a187e7746b87fe5782528efd49f568678f40085efb0a9452ce032ad88c8c1b09"
      "cy"
    end
    language "da" do
      sha256 "a84633e8a37ae71599fc0c45e446fa395c6b86482ef01a71469be999d6e80765"
      "da"
    end
    language "de" do
      sha256 "229f6d3801b16ea87bb2c501e162cee8a1c5b024dacafada4fa4b4ed7041c9c8"
      "de"
    end
    language "dz" do
      sha256 "66f3c6d992e926e9a705ebb75452eabb84fe9ae5db5932a5bedd927af79c3829"
      "dz"
    end
    language "el" do
      sha256 "4f20bbae5315999ccfc955e1fb6502e5ede44f330b7d29fc7a1210303034b3f4"
      "el"
    end
    language "en-GB", default: true do
      sha256 "a31096a38bab8a2e203a55e34648766f6d36f0fa88ebe700d71925d0809f101f"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "84b404249c28911c499f5e33eef1f242f350f94bae9e4b4976228112e35c140c"
      "en-ZA"
    end
    language "eo" do
      sha256 "027e6128425b4d32516e46ea7be9fed80a3f42ba9963fd7597b74266051261be"
      "eo"
    end
    language "es" do
      sha256 "65972826f2fe90bad6a1d0196558de380d50302a36f6490d27abfe2241680ff1"
      "es"
    end
    language "et" do
      sha256 "90c953282d79ecfc357136dc09000237a76970eced012e3532f25e72fe1ba3e7"
      "et"
    end
    language "eu" do
      sha256 "f0a9bdf6e2828b9b7708d022a0f36ff9bff1a5e6735ef0ccb03b08c3f8c645f7"
      "eu"
    end
    language "fa" do
      sha256 "dcefb6117b6425858e3b42b1d8a8fa7465edce6f898c6861bea9354430d8abca"
      "fa"
    end
    language "fi" do
      sha256 "7a50727ff418694863867fcfe522ab0255075dc3274fe5f7a8ac39fc50969796"
      "fi"
    end
    language "fr" do
      sha256 "97d99c145cba0151ba4f6f83ad2828abc0b290a72cdf4bb354213ba185586876"
      "fr"
    end
    language "fy" do
      sha256 "b98b286f6813b06b82ee045c52823f0c54ec4158609d1d6954e9005d27b77228"
      "fy"
    end
    language "ga" do
      sha256 "598b353b996fbd158c28bf23fcd050927ddbb35b1af20d0cee742066fa8be948"
      "ga"
    end
    language "gd" do
      sha256 "cce18ffcd853c0256d7884049373da6a6408342fdd959259ae7244c2c6a62fe8"
      "gd"
    end
    language "gl" do
      sha256 "ebf2f83b3e583d8e586197848a13016b51dc9348a04f171ed078dff838f55bb2"
      "gl"
    end
    language "gu" do
      sha256 "1f31cc97fab40d5590639177bd277889d31ece50fc513b4dcd001290e1b763d6"
      "gu"
    end
    language "he" do
      sha256 "fbcd67b7c58d581c3df386362a23ad2b50b2d372e5029f4374bd48294126712b"
      "he"
    end
    language "hi" do
      sha256 "c5bfd86c3d912f53027c00ac34e13222abba29d82aa7256d9e70d5ca5b995ed3"
      "hi"
    end
    language "hr" do
      sha256 "e308041671b69d6648c2f017295b952f99563a7c4b763bd6fbf941364bd95db9"
      "hr"
    end
    language "hu" do
      sha256 "0d08fd0e9041fbf47677e1cd19651eee57ccf61c8febfb7641e366d56ebc9f7c"
      "hu"
    end
    language "id" do
      sha256 "99c4b8f2429787fde01333ec6d4a56eec63dad546cf020d5f5a40b89f3016f78"
      "id"
    end
    language "is" do
      sha256 "9b012de4b4ab672a1359735a69b1b782658a23cd7e2de2d1b874e0c866e934cd"
      "is"
    end
    language "it" do
      sha256 "dec01be697bab6cf677631fb5d00879e164d0a92a49da1b09929cc74b2be3dd5"
      "it"
    end
    language "ja" do
      sha256 "5e06b7d462d38d2f251cc4999b4baa22db4a220a95cb3257fac4177324d788d7"
      "ja"
    end
    language "ka" do
      sha256 "7b55cded0453da0ff3f84e72f75d0d221129400b90c7d836ac81b27af8590850"
      "ka"
    end
    language "kk" do
      sha256 "f6fa26c7b38b03820a27a6d7d0019386b52c37e0984d6004d7cd1ce821121d59"
      "kk"
    end
    language "km" do
      sha256 "d24a19acca75308be0f978b3a405d8a9aaccc12ebf051892fb71b4916ffd61bb"
      "km"
    end
    language "kn" do
      sha256 "3dd7b24398acc5dd4c1b966f73d5827ea2e53ec93196aaec4222022afe115867"
      "kn"
    end
    language "ko" do
      sha256 "b88473c7af2f32dd53e05ffbe48678623dbcfcfd64aa5c50cbcfd4d56d3a9ee7"
      "ko"
    end
    language "ks" do
      sha256 "df4809f7d579c631a730672f094a37c61c2bb3c3c9f2c95dfb0487750d7902bb"
      "ks"
    end
    language "lb" do
      sha256 "807a80b2aa8711b1c176fab9a1d71278bbbee260d0dab5de749027bb6e4763df"
      "lb"
    end
    language "lo" do
      sha256 "4db250e9b36374e5658cce7ab76da6469a44796636dddea1e11ac677f43113db"
      "lo"
    end
    language "lt" do
      sha256 "0c64b67c2bcd75ba151443ce728fc550b3dd5cb073e76e3bf39f4e1775591f57"
      "lt"
    end
    language "lv" do
      sha256 "fae48a9ba2c257ce93e6b6f9334192bde27d3d248eac112ec4bc036c4425f695"
      "lv"
    end
    language "mk" do
      sha256 "a91524b885156ba57102bb7b8a7ef22fab17b6076a67f64af729d4f3749c9bc1"
      "mk"
    end
    language "ml" do
      sha256 "df4dca86ea0fb0d54a20e653375fb744a289be7de4d534a57d3ac73a8d06cff7"
      "ml"
    end
    language "mn" do
      sha256 "0f6ebb0b9a1fc90c6c6b875f4068c8cd7a2b216bd11ac3de2a7e76167b3c1ce9"
      "mn"
    end
    language "mr" do
      sha256 "52ab08e9a0c5b38560b3c5f0ab1e95fe694595fd1d802cbbc6a1677c400459a0"
      "mr"
    end
    language "my" do
      sha256 "24884fc65ff37b06f4655f9531749d5a34f06cf69105f1fa7d7be583bae1056a"
      "my"
    end
    language "nb" do
      sha256 "e64824a3c0de2a30dc09fc8608d136040471785463bb35ac1cc8d620a43f47c0"
      "nb"
    end
    language "ne" do
      sha256 "4a3e0659bb757bea277ab6385565689c60b8ac33fae0761fd00f81c8b33157b9"
      "ne"
    end
    language "nl" do
      sha256 "ebcd7d3020b554dc668508c39a83424243e072eeca78b952ddd15f5d20097ccb"
      "nl"
    end
    language "nn" do
      sha256 "41b2ccce9a1c4c7d01ef6a7243d77f1f39df5a04fd1ec7ad7b7e0e938f444b0d"
      "nn"
    end
    language "nr" do
      sha256 "82485a64ee594ed0d3891873c5ecf6c617da0aee6ef844c321f80fb58ff67bb3"
      "nr"
    end
    language "oc" do
      sha256 "dfab3de71a779750b08e59583786a2da9d7edcc53247133489da173909120e9c"
      "oc"
    end
    language "om" do
      sha256 "245bc06b8f4c2a0768e77d2a9ad9685abfa7d70f4826518b38b90b0a300ba49d"
      "om"
    end
    language "or" do
      sha256 "3c450ed24a1728bc73c8ab7cb53217c7fde463973c12cc7618ffd99ecc115fb7"
      "or"
    end
    language "pa-IN" do
      sha256 "d0af1ad3d47082d91f0bd24cd174ecf7dd442a3fef747b987b25afca34495495"
      "pa-IN"
    end
    language "pl" do
      sha256 "c276e349af605ce48625f789f8f06bcff692e05d23c735ed9d3ae8d2c71559fa"
      "pl"
    end
    language "pt-BR" do
      sha256 "33999845e0e74e2eed135b57e382393d48417dc5719ef9a508480f34148c8537"
      "pt-BR"
    end
    language "pt" do
      sha256 "375e3ce54b798f183cc40caa661d39b3242374ad0ead666083bc66d3f8e2766c"
      "pt"
    end
    language "ro" do
      sha256 "7102391591cf396afab080baea24a62b2e19c8843257f7ddd818091ee98e9c9f"
      "ro"
    end
    language "ru" do
      sha256 "77143647fe44c3e8f05e82c6ebad295f9967aa1234709b33760fca796ef08328"
      "ru"
    end
    language "rw" do
      sha256 "e59ff8ab293961bb608e1b9035a9769a1d86bdb48f27b2ae31fad5e4cbd6dc99"
      "rw"
    end
    language "sa-IN" do
      sha256 "6fdf00447b8b25357a674ed00d953241a97e80f541242a81dbda8008ec338c89"
      "sa-IN"
    end
    language "sd" do
      sha256 "d120403c4c14c38ad199b5cb13acaca646cd8c108ac12b8154cb8fcbd91ef62f"
      "sd"
    end
    language "si" do
      sha256 "9ec821e9dce75eaa208adf3baeb986b5d2ecfdaefee18106331156eb42fcbff6"
      "si"
    end
    language "sk" do
      sha256 "745b29def7d8af6cf32abad4f7f8b8d3130ba8ef888251bd4f91cef8b3c69e72"
      "sk"
    end
    language "sl" do
      sha256 "08214b847bd87910ac65cad20ede1867e0433f3642c1bd2f0c68298e7d54da48"
      "sl"
    end
    language "sq" do
      sha256 "67f99888b6d1064d84f2a8edb525fc6514ca61ad00f23b51c66a4859c2002067"
      "sq"
    end
    language "sr" do
      sha256 "ae6aae6349632a2092ce18fa837c93f7287659bbc889f15a1ce73c9eecaea2e6"
      "sr"
    end
    language "ss" do
      sha256 "f4df44f7c973bff3c049a1fe7b7023df4eca581169cfe1ae74a01bbb3d988d0e"
      "ss"
    end
    language "st" do
      sha256 "4db793519592f8a9bba309c90e991f2c0da005502b68153c602d7eed344a8c90"
      "st"
    end
    language "sv" do
      sha256 "f14525e669f2ec7fa893183ec6e32a5b0a3a2fa8bd9bc899e73601b0a5262032"
      "sv"
    end
    language "sw-TZ" do
      sha256 "7afcc05e124560b1c7b0ee7d9ec2753b2edaccf91ee74ec01d39c872839c8328"
      "sw-TZ"
    end
    language "ta" do
      sha256 "acc20fa2e7e612b54e6f49d20cc840a82169a900acf6fb6066ab96336fcd3ca3"
      "ta"
    end
    language "te" do
      sha256 "5f6f02194163213361e5647211a3b25e72b93c1dca331dccef3ea949108b729b"
      "te"
    end
    language "tg" do
      sha256 "f16ef73827fc04c5af97b6a90468473342e6985af6c595dbd5693b76b69030d1"
      "tg"
    end
    language "th" do
      sha256 "19a6d46ac53e602cdd452de68f52a229865ed1eb18a099c60fdc6302e3409b8f"
      "th"
    end
    language "tn" do
      sha256 "406fa304c4e68afd82f8968564ced592814daa795aa29403816ec6ff4b65ca08"
      "tn"
    end
    language "tr" do
      sha256 "6758f240671f56d5b2a10e569f0120245826f7648d06e166cd2001d1501d160b"
      "tr"
    end
    language "ts" do
      sha256 "4dd8a9974ee33eb3948776a6c04f3a8bd74da575d9974c5134516bec52c3797d"
      "ts"
    end
    language "tt" do
      sha256 "80378d18516674b911dd254579ff8449325ea7a2a2b58c2dc46679cea6ce86c8"
      "tt"
    end
    language "ug" do
      sha256 "974311d801d304bbdc9408c2e0b7fcec51c0bf2b798e35ac903db98330e30f0c"
      "ug"
    end
    language "uk" do
      sha256 "5f8145ab326f101c28a2e9e0a55cf0ade604d7e2e7cc018270adad9703ffe65f"
      "uk"
    end
    language "uz" do
      sha256 "004a11b6830764b40f9f580506a2378d4acd10a138cc89c869619ebc7498931c"
      "uz"
    end
    language "ve" do
      sha256 "0750efcebda1191ba5282ebada4f9dc73fa2219c8e0a1bd6136ab6bb05e5c3da"
      "ve"
    end
    language "vi" do
      sha256 "07acc6c7763e836420d2ebfe7a99f1beb1a82b5c517f024bce6bbeb02b43577a"
      "vi"
    end
    language "xh" do
      sha256 "d8eeee8f033c1fe41d38b69e0c6d3ac62f71a3e03fa206eb53e3af74dc406167"
      "xh"
    end
    language "zh-CN" do
      sha256 "65eda2dd86814704aa2087d5667c7d03c624f177b63ddb106a85c03f99bd1306"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "04471036ae8ce48f6cb88a95f4393a5b7e15505ddfb8e4cc182f40f61db8e2c1"
      "zh-TW"
    end
    language "zu" do
      sha256 "c576107c06ce33982da3711c0febe957c3dee960236d3a0cee8b1844c264aae8"
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
