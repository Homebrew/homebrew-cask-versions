cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.5.6"

  on_arm do
    language "af" do
      sha256 "34af45a2b2ac806bdf59146f241f3368b93f86293604d059aab41e5d184a49a8"
      "af"
    end
    language "am" do
      sha256 "af37c32b9b9a905d252f54e08555f1142fca7854eea1d5f52d111cee5feec052"
      "am"
    end
    language "ar" do
      sha256 "5cf6ec97e9b6ce0bb9b32b9f18f642bb13c48a22c3d54f08ff3713f84bcc5210"
      "ar"
    end
    language "as" do
      sha256 "4c254d004038c5f52bdeeabaf13eccae5fd9c87bd86adedcc19e0e537f863bd8"
      "as"
    end
    language "be" do
      sha256 "d8c85de9b20a1987b2498f5a76e5e5676f7903eceffccbe9d97d660d5f8dbeab"
      "be"
    end
    language "bg" do
      sha256 "c6185d437cf6d25c3c24d122a313bc13572bdbc86de28824dc6ab6e59847b1ce"
      "bg"
    end
    language "bn-IN" do
      sha256 "385499a104a006e75cfeadcebe74fd0041d01bbb37c916dee6ae0a3b09a0dfc8"
      "bn-IN"
    end
    language "bn" do
      sha256 "676d3e215f16ccaa3be34f5813022fd8bba478e0677508b340ead71848a9440a"
      "bn"
    end
    language "bo" do
      sha256 "6ecedae7ee62a1585812cfa992835a1adc13c9555982643b7fcdfb39b5886804"
      "bo"
    end
    language "br" do
      sha256 "993112034509d2045603b3f222e81cc8796be55f74c7234ad0e9777c4b2e9384"
      "br"
    end
    language "bs" do
      sha256 "3164b1b29d5512bbafa5dec24cc7af5d6139c1350fb80581acf676ef04c9a9ec"
      "bs"
    end
    language "ca" do
      sha256 "c0b6c2a11b9e5dfb167799a6d1b01fa70c0914cd15adf4fb865db74ab3f02215"
      "ca"
    end
    language "cs" do
      sha256 "19a4ee20059578f050a5e44114f1a6463079113405a72e20d74ba8526c0edc0b"
      "cs"
    end
    language "cy" do
      sha256 "cfff1c5ab2e4f25fc9aef230d754661a8863221e66d9ffc0c0a409b93c394f8c"
      "cy"
    end
    language "da" do
      sha256 "f76e478b7340b5a2ba9d33776894151157097ae4c44c15033cef8e3d372113db"
      "da"
    end
    language "de" do
      sha256 "9fdf4b63cfb2a4479c6bd124528165965f9e967137d986b0ff692a3173945a04"
      "de"
    end
    language "dz" do
      sha256 "e99c86e7ee2cfa3dde2a7d636fed485d5bb98c4556cc9f0874635ebd9fd326b3"
      "dz"
    end
    language "el" do
      sha256 "98c84d44ed63a0ba497f524974cb4ecbdf9f4d30de54c66ec16d84eaf3442c08"
      "el"
    end
    language "en-GB", default: true do
      sha256 "7a3e202888269a957ac846a1fb55b4ca7b6e95dd4fcf4faaabcf7ef4a8101af4"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "bc0875e921d91fa66cbfbf4ed1b893817bf03a93567905d2138ab2ad726ec912"
      "en-ZA"
    end
    language "eo" do
      sha256 "4ae088d3df6109e6f9f9e2158f1010e3ee2287ec05bc5bb151b68740fc4fb390"
      "eo"
    end
    language "es" do
      sha256 "83abea2f58181970d2eb34dea29735b275d8a5f891a47af4ccdbbde362a02f43"
      "es"
    end
    language "et" do
      sha256 "532f8e5b32086350511d2e645108673f251ecffcd39482b344ddc58eca262b68"
      "et"
    end
    language "eu" do
      sha256 "3a4959c6621fc47b917250f981faad19ce260deba50ce2e6de0c2a59ead3004e"
      "eu"
    end
    language "fa" do
      sha256 "7ce06012abc34a639d2c5119eaed550255ce77a43751ca1b1e6e9159f3fcbdbe"
      "fa"
    end
    language "fi" do
      sha256 "e5adb38ea1ccde1140819bb4c7140f2ff810e3d8b3e288a83284a162cd07b089"
      "fi"
    end
    language "fr" do
      sha256 "9bad361c52ed15cb787a2c395426bb35740fba7c99d20eb2c7ec94a261715efa"
      "fr"
    end
    language "fy" do
      sha256 "be4989cbbad66a26ad4807c9b79faf94fa6d72681eaad952c497670ed6f24f74"
      "fy"
    end
    language "ga" do
      sha256 "3a1f30e1bf88ca1d9339604539972b2a647fff2c9820ab01faafec95555da7d0"
      "ga"
    end
    language "gd" do
      sha256 "0df77c86102a6499df9c921f053ed93cd6f1d2f41fcfb593ffbfe1d4d066dbf4"
      "gd"
    end
    language "gl" do
      sha256 "482b358e02f59f48a4908b71dd8338c4a84ef38c353ccc30a4393950f5c6ea03"
      "gl"
    end
    language "gu" do
      sha256 "2f6748f5b5e3906d75d860898525518545fb3c4bbd9ac33d624fa4c89088019c"
      "gu"
    end
    language "he" do
      sha256 "091625e2d0f3b130d50ebbf3f232743c3308a91dcdfb0ff14588545d98361240"
      "he"
    end
    language "hi" do
      sha256 "28a896c6295acc5266d3a942608bcbcd757e83d78028294a57a9eb133764cc40"
      "hi"
    end
    language "hr" do
      sha256 "7f62175209f6239539cba639714dc55ec39cf368ff3a8befd253d9b194f312fd"
      "hr"
    end
    language "hu" do
      sha256 "019bcca7a9903dab5a520d191ee3980ed37fd61e68e7e33b3980351ff5fa72ad"
      "hu"
    end
    language "id" do
      sha256 "b1b5e315e153995af261f3cf75a17d3044525208582a4f83a57a74070edeb409"
      "id"
    end
    language "is" do
      sha256 "2132e5c5a4dde3e0a46e5b764d3114c0da72204b4f7f880ac71f9329bb90bd7c"
      "is"
    end
    language "it" do
      sha256 "ea826624eb6693c02bec40ec08ab1877e418a90b81af3bef7cc1ff60d4fc4863"
      "it"
    end
    language "ja" do
      sha256 "9e95cd2974bcdffa699f44c623b761ffd599a2b5c875e51299d44fed5637fed5"
      "ja"
    end
    language "ka" do
      sha256 "157e66496db10b0b446d486560713a709fd00767ed5025aa5cf6ffb6bd89e035"
      "ka"
    end
    language "kk" do
      sha256 "01bb8ddb612bb64c313e47e8e7892150c563b31d1998a48135d26f954e10512f"
      "kk"
    end
    language "km" do
      sha256 "675d5c1c699db404c4a45f33063e0e0489b4c83c4d7a2fb6dffc36131d0eb819"
      "km"
    end
    language "kn" do
      sha256 "f86680fd065eec1296844285064f528ddce3f943d4284b8b0d1e99b8c9583d58"
      "kn"
    end
    language "ko" do
      sha256 "c47802a700620565c5c629f4169f51bf79d06825050923b466562b8c33aae46e"
      "ko"
    end
    language "ks" do
      sha256 "ce5de8a05cdf97c7e0eb1159208106e5605d1c9515f8ac8ef3d40cb48267783c"
      "ks"
    end
    language "lb" do
      sha256 "9bc400925bc266f62b87c237ef6f3c6324242308fd67f445d7cbac410567ddf5"
      "lb"
    end
    language "lo" do
      sha256 "ac9fe8df6a157f60a36204352c4f0a6ebc2e96cf169e6c82c9d809553f0ed0b8"
      "lo"
    end
    language "lt" do
      sha256 "2486b7cda1d6f949ac99b2878a93f8ba04d037f36a9e947721cd2e84391f1833"
      "lt"
    end
    language "lv" do
      sha256 "35b42cdd68acc8907b889cdd038693e5ca63f9e0d8a20581a8ccdaf0815f02db"
      "lv"
    end
    language "mk" do
      sha256 "49f22f9e21f46557f21baee9385dd27dfbd3c64fe01f2762d0180a5ca02db7ad"
      "mk"
    end
    language "ml" do
      sha256 "454e2d48fc9b21ae82bd0c2f649a706822b6d841019fabc5421fc86b79a96b4f"
      "ml"
    end
    language "mn" do
      sha256 "251975e58e1fbb6bf5b11017e6b779c816edc2705e28eb412c6d8657ae418ce1"
      "mn"
    end
    language "mr" do
      sha256 "a86750ec2d876fa0006cc66ccc73314c57d758d90035229e16de3fdd9fab0ba3"
      "mr"
    end
    language "my" do
      sha256 "521a48b7a2525a630bfaa5fbed98826c76b6e6de7101d918ce6bb03f83d0371a"
      "my"
    end
    language "nb" do
      sha256 "243089d713df834ea0009c6124e3f2dc6e206cc1a2dd1db5fdcf09fecf4fa04a"
      "nb"
    end
    language "ne" do
      sha256 "d4965765d1bbaa58cc4736b30a27bf39cccdc444b99d8dd2b8f3d67d19caf848"
      "ne"
    end
    language "nl" do
      sha256 "6bd7f4bed2486fe08ffc16f7273dca07749facb2d9df0a0fa17e07f7e35c8cfe"
      "nl"
    end
    language "nn" do
      sha256 "9be271fa0a02a09f4d72eb70c8676a9228a65e39c6eaa2b40b91f741e73f6da3"
      "nn"
    end
    language "nr" do
      sha256 "3a5dd0978fdaed4f78f4537e66e3342f8aa2710b1620c506d465daa3dcdda244"
      "nr"
    end
    language "oc" do
      sha256 "4fdd90f5dee2f9e53783a3b94a87b2da0d20224dd093ca99116d132f992ae90d"
      "oc"
    end
    language "om" do
      sha256 "99039e42b18757fa2d184c93669d95ae7986166ac76d590a9aa7a931d7cddbf8"
      "om"
    end
    language "or" do
      sha256 "08b5a66654b560bc9a5c4ab34fe098ff9d0d00d9091520a26333913fc0b1efd6"
      "or"
    end
    language "pa-IN" do
      sha256 "9e6b3028b588d38faf7db6e28463ba7d7ec13d72c237ac64b6c3162c546199b5"
      "pa-IN"
    end
    language "pl" do
      sha256 "34340fe62dd699ad457b5b5923081a504bb457fd52c6684213dd011cd627fe42"
      "pl"
    end
    language "pt-BR" do
      sha256 "ed92cd3f65b28c92c725d56a2253637acb5dac7dd41fe6e00cea4cbe12a1d3ef"
      "pt-BR"
    end
    language "pt" do
      sha256 "c5f41db6c303d746a48159ae35f00fb02d7e5ef94b03c478ba183a940b1616db"
      "pt"
    end
    language "ro" do
      sha256 "e71c0694caf7173cc0398f3f4efc209dfedd349e5eaa55c5a181a6b5e16ab478"
      "ro"
    end
    language "ru" do
      sha256 "df37883cebdd87eb997d79361573c3a687d4b85fc7bb40c0b702296e77376775"
      "ru"
    end
    language "rw" do
      sha256 "059411cb1752b7c2ba89d3134b97731bfb9461f053fcc9f4664143f02bb973f9"
      "rw"
    end
    language "sa-IN" do
      sha256 "ced4b1310380936babc6910d1bc37544aefefa099abf2119bc8b43d6243e8c72"
      "sa-IN"
    end
    language "sd" do
      sha256 "e531faa4ef7a95ff3878d62e999c1cff84ea11d2e0ed0479b8680238b5140e25"
      "sd"
    end
    language "si" do
      sha256 "b98aceab5b0653866965c209e6acf2bbaf66ff3207832d82cb92b06b44b440b5"
      "si"
    end
    language "sk" do
      sha256 "ce0ebe965f330af453a959e73572b0478b33a97cd6aacd281700804e07bb0c90"
      "sk"
    end
    language "sl" do
      sha256 "e0f2b84b9b2e994866caf87e158982e6f879d996db250a4b517b5509e03ebcf5"
      "sl"
    end
    language "sq" do
      sha256 "bb014a8b96cdd618a6689fd01c9f41b1617a6b5d585817c23853fa85f10c182e"
      "sq"
    end
    language "sr" do
      sha256 "dc6fdf3f108640af3937323a03c6405c37959e63c57e78350d84111730284fc3"
      "sr"
    end
    language "ss" do
      sha256 "2c24e3802cce587211cbfc0702130ffdcc157c6eedd4a7de0dde7024855bbd89"
      "ss"
    end
    language "st" do
      sha256 "dd0ae7f1ee3a07c4acddaa279fdac957cb9f8a9543c489fde3073b88432be075"
      "st"
    end
    language "sv" do
      sha256 "cdfc4920645a15919676276842c54f491283c6eb0cf8e577fbf0464fcb123886"
      "sv"
    end
    language "sw-TZ" do
      sha256 "a2b9cb1e5ee868b6c23ecfcb751bcb0f4d2c43c509959d9f04bb5ff17e2744df"
      "sw-TZ"
    end
    language "ta" do
      sha256 "80e422277a46124a8fa04c747f64fd708f54ad7403a93fcfe76b510c930c091f"
      "ta"
    end
    language "te" do
      sha256 "c258fc73b7485a72c53033f5e34a371c53770f45d926c15f0d9a342baf3d0fd6"
      "te"
    end
    language "tg" do
      sha256 "c91c3adc2db7b3d8a786fb7bbb3d13fef9c7d08c759210ad3fdafb9bc17c9f0a"
      "tg"
    end
    language "th" do
      sha256 "65708d9bfcce6f43b5a085f690341378876ebb16c3af9bdf741601be0392e3ed"
      "th"
    end
    language "tn" do
      sha256 "8ba389acfe7042e70aa64cb387d5e60f26cd0c28215a12dd3fbb1cf3ca9c037e"
      "tn"
    end
    language "tr" do
      sha256 "56d0d307abde98054c57095deacf79ac95dea6f8a3b0cd24163e557217325fe0"
      "tr"
    end
    language "ts" do
      sha256 "293da53627e9a6a8a434e7fc06294657bb02ecfe68ef448c89a90900c255b9b4"
      "ts"
    end
    language "tt" do
      sha256 "daf69f0d893f04470e4e00cc10c5e8353be4e134af1cf79d0ed86c229e62b9ee"
      "tt"
    end
    language "ug" do
      sha256 "5b52b5d71c9e7abd3601390d3542b17cf3aa7e80840d00fc0a3d9a17666878f8"
      "ug"
    end
    language "uk" do
      sha256 "4b8e3dba326734b4cb258a27bd7406e8c339e19912e801fb11766b2b5b4ffda6"
      "uk"
    end
    language "uz" do
      sha256 "045dd06a9edfd3fc74ea0f921fd0c9c0bae3f013892fefeff458d447d37c047f"
      "uz"
    end
    language "ve" do
      sha256 "ff72e98a1750100b308c864b45a3f57658ba2097ff276482beed6eeb1957ff73"
      "ve"
    end
    language "vi" do
      sha256 "1460fbbaa3f3b6e77d8c0cb321e322a497f160beb0969220651a70cd0845738f"
      "vi"
    end
    language "xh" do
      sha256 "13d613e58de4056b1cf69268fa9b122014e6350b93b76450259db3bfeb47d2fa"
      "xh"
    end
    language "zh-CN" do
      sha256 "a4f79735095b72648d9e896bea7d7ee3e9a06f3086cc2465aecf43942f31c207"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "1b25ef6e651ac1a4faeb7ba973ea76580d3717d2c812541a65ea8dfea29a7c89"
      "zh-TW"
    end
    language "zu" do
      sha256 "ee0277e13d005639b5e4c0340a98f56592d5df1e245bf0908752e0db0b525a2a"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "b081098c03cee83fa0b2279b1c08c2777a456f65926bbe6775ce07ee7358490d"
      "af"
    end
    language "am" do
      sha256 "2222594ebd678f2316cf76b99694d2a9d62cc463901c044f399a1afba1d7afcf"
      "am"
    end
    language "ar" do
      sha256 "4f6313d08f3085aa476e3812a57168bbf65cc0c2b362659723103d12c4b2ecc3"
      "ar"
    end
    language "as" do
      sha256 "0a7e781d3c0b21d9fb77e3f0f11dec1e84fae4b4d8db6a7bbce18723343b09e8"
      "as"
    end
    language "be" do
      sha256 "2a2bf40beabea06110f905560cbde0107d4014f15b5e3c90d37ec97854981893"
      "be"
    end
    language "bg" do
      sha256 "89b1c0e6ffef817e177d2b22c7c36fc60deafcd473c7a379efebc599a6be30e0"
      "bg"
    end
    language "bn-IN" do
      sha256 "6ef0862f5168c2612441b551fdf2c5c85c3786f95468dd8eddbef304f58e388d"
      "bn-IN"
    end
    language "bn" do
      sha256 "24c5615c7fc3d1327662585d0255d63fc08c79f04e04bcd36682d6636514e410"
      "bn"
    end
    language "bo" do
      sha256 "8a3f34cecedefac037d6e384f260b04a2009699cd763a0b09e672275aa821cd3"
      "bo"
    end
    language "br" do
      sha256 "c49c3e0ac27e6f8d4716cb06f0e60e9ea79fb7695624e948e90f54277df56e47"
      "br"
    end
    language "bs" do
      sha256 "d434eab376ae6b28e02cabd1b08ccfca29f9243fbe198cc46f4296b0ea362c9d"
      "bs"
    end
    language "ca" do
      sha256 "7d3b71543cfd0075d9d51284aecc52c54069af885b295092485edb3b0597fcda"
      "ca"
    end
    language "cs" do
      sha256 "02ccfb2e4cf8e0f64af1e69a6249ed2c36fc49f4e19c3b18a5e3b8d5f421d481"
      "cs"
    end
    language "cy" do
      sha256 "2ca0ffb83dc57dcc82157b8ba61621b89371dbd8f2ce0c9a45c2f6c8bc9f8712"
      "cy"
    end
    language "da" do
      sha256 "992c98511579d7682e7465199b7e07d691c40324572cd069e5ccc1059a58cbab"
      "da"
    end
    language "de" do
      sha256 "c5d915cd77f8945b525e74c1647d915ade78aacec2b395a5a59761e5752bc2ff"
      "de"
    end
    language "dz" do
      sha256 "26985917d8838edf549bd902168d540cbd980b8823e6a5fce5005a205328f0f0"
      "dz"
    end
    language "el" do
      sha256 "7332cc4b1fc5585bea78e016d7e28213b41c9677559b8b6f77b3b13b8f51711a"
      "el"
    end
    language "en-GB", default: true do
      sha256 "1f1a67c73e2e866f12b7d784f79b2e2719dbdb7bcecf411c2e87554322bc16a3"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "df08bda3b2c2a327d477503acfde8c05658f8135aa37e07be9b06054881a6d29"
      "en-ZA"
    end
    language "eo" do
      sha256 "6f3c16eee9f2973cd487fbe7d1bd59647d5c80fa5944a9165493c1ceee31e729"
      "eo"
    end
    language "es" do
      sha256 "76e03735da3d0fd3056450ebbca0391e04bd5891343427b23b07049eb4ca9197"
      "es"
    end
    language "et" do
      sha256 "0e1ec570ee796fcdde202fa651e8ef27ad8d6c720c7dbde63f25dd4b0d9f9288"
      "et"
    end
    language "eu" do
      sha256 "d8733b67729c2b199c8e4b5040a73c39d2bd8247a699ba67ad89dcd380f00b76"
      "eu"
    end
    language "fa" do
      sha256 "1763759669b97a62d9d58abaf721f9ce579ff99b1d4b47d8cf018b87b8359ff3"
      "fa"
    end
    language "fi" do
      sha256 "2c9fa0bced15c22548dc5f9bcda25c941f70bf508a2506db3ac9744dc84ba4e1"
      "fi"
    end
    language "fr" do
      sha256 "d116c4c7ad1e15f3e83e0f93ebc08b5522f43f2426b488b2358214d753158be8"
      "fr"
    end
    language "fy" do
      sha256 "f2ce5cf6ad652c0a779da44f423759a2980d05c6926db7998236f0f83486dba9"
      "fy"
    end
    language "ga" do
      sha256 "ca1377784b1548ec8db86fa0d9163f59f27cfa6da0937cd9d5881da2a4cd4b23"
      "ga"
    end
    language "gd" do
      sha256 "6f8c4b6a201724c6d08ea9413676a51f7d48768c29432fae6b96be5f752be987"
      "gd"
    end
    language "gl" do
      sha256 "c19843436e28f7a60b1614e8e6dcb007192827bb9c2945cd8585b4ef1df26037"
      "gl"
    end
    language "gu" do
      sha256 "b668cbf142a53b9341519a9745aae043397a3317e5a2d294184395ab6595eb3c"
      "gu"
    end
    language "he" do
      sha256 "a1215524f93cd3da198c426ae94baf15ac64d423f29fd6784d2854ce64242e8d"
      "he"
    end
    language "hi" do
      sha256 "1d4059de5249c35a11abff0cb42e675b70af1dd14302d9d3e484a03288a845d1"
      "hi"
    end
    language "hr" do
      sha256 "d64c09cd345c8c6a6af840f1d73f395f34c964782f75f421a27a994e43bf1a5c"
      "hr"
    end
    language "hu" do
      sha256 "e1fa82660f9616192186a57aa427bd622cebe109e909059bfd6e6a4c57d28e82"
      "hu"
    end
    language "id" do
      sha256 "8a34f81c743be18f3bdc4f4b0b776528e27569ba493a624fb1dadf3f0e8c6131"
      "id"
    end
    language "is" do
      sha256 "b3156e6bb0cc8dbf83665eb96ee17c556b78e3fbbd4678ebd1b0a3221e2f3d77"
      "is"
    end
    language "it" do
      sha256 "71900c5f5a4e74bf79da4ee23df54b08da64a2cdcd4cb4b7690f0557871d85d7"
      "it"
    end
    language "ja" do
      sha256 "b218c8da481e9eb7aaa5830f960093f127a26b8d5a1cba12da235eac62f463e7"
      "ja"
    end
    language "ka" do
      sha256 "ca9cb0cce5a2b3e4b22ce8f36b7300ffbddeb4337214f7977708159813e287fc"
      "ka"
    end
    language "kk" do
      sha256 "1b216c64f424e3920370ef0b7be9547d69f71ce2845d9f800c39d722e83a6c5a"
      "kk"
    end
    language "km" do
      sha256 "e81e5e1172b409e573944d9b8ff5bdddbc535c05e06fb163d9690c4264a29553"
      "km"
    end
    language "kn" do
      sha256 "f6e76426f80ab1a33115cbff958f82193a534f0f1c258d56c551a8b169baf30a"
      "kn"
    end
    language "ko" do
      sha256 "2f5a9876f66ad74cdc2db027b64e3a1d4e9d5233b0728b858037fbb7bd3149b3"
      "ko"
    end
    language "ks" do
      sha256 "6ff5e2930e00dd7527c449ea00531b8e49675371e7cf824a3a270c292801cb65"
      "ks"
    end
    language "lb" do
      sha256 "601882e15c0bdd43689cdcf9fbdefa32ed7bbd096f1ad4862aeef267197233b0"
      "lb"
    end
    language "lo" do
      sha256 "f0e8d021553b7351e37892d75afe95ec01975f8bc8d96550e7b298bbacca0bd2"
      "lo"
    end
    language "lt" do
      sha256 "3a0a012d7e095bb309a18754760541e8803370ba87cdb29ff334833bae390b16"
      "lt"
    end
    language "lv" do
      sha256 "4f744051a673907514e6470fba1189dc427bcd60271de972803d0682c5e3a5ab"
      "lv"
    end
    language "mk" do
      sha256 "5ea047e4b6a90c27d95fbbc0f9201c78d6920ebea5217f51089b564a69875419"
      "mk"
    end
    language "ml" do
      sha256 "202621d79fffb7420ac30db14b22735c945ff62e1c4bc14d9f9a3198681d7591"
      "ml"
    end
    language "mn" do
      sha256 "45d94cbde0f71e2dcc7fee2d0ead48e73653012946de9dc4a78078ddb976dda3"
      "mn"
    end
    language "mr" do
      sha256 "1e1a1f8e416e20ad3d650f5eb44202605a6d50b938a0d86bbde4d3e7549e74fa"
      "mr"
    end
    language "my" do
      sha256 "41186494e2d31ba8f4bcfcb030866c2332bf891b5b867b66ab4fabc347db9e22"
      "my"
    end
    language "nb" do
      sha256 "e373f4ac8ad616aa594c08f9c8231a45d51571792e750501c1de50ce945af576"
      "nb"
    end
    language "ne" do
      sha256 "621818d218b956ee19a52312deb46770ac5a4388fd22024f9f2bfc8cede06d8c"
      "ne"
    end
    language "nl" do
      sha256 "5fe002f526da34252cda849e7e6a95cd99e7d9940a82a4f2a0d14d6735a8abf9"
      "nl"
    end
    language "nn" do
      sha256 "69ee0d3a177240707a1f556e641a88cbe1dfd27204563ee48c12f5b3958b9030"
      "nn"
    end
    language "nr" do
      sha256 "9c05743657d9e1edd008854d349e93b46478dd0ee8af553d5960c7d442029df9"
      "nr"
    end
    language "oc" do
      sha256 "3c4dae0032c58f2f2202e83e50d16438de981c29753edf1d8bd4313a824a5bbc"
      "oc"
    end
    language "om" do
      sha256 "fa38a320aed24cd625c89cdc137aa40398ffb5c56eef25be6f394f4355a4c427"
      "om"
    end
    language "or" do
      sha256 "d87a1b83bbe768cfa54f2f34c17c598bdb5b5e9805010ff6ad8e5a83e012c490"
      "or"
    end
    language "pa-IN" do
      sha256 "e44ed4982f5942ce809268f7a91eed3e74f274caa48e641907c2d08eca2eac32"
      "pa-IN"
    end
    language "pl" do
      sha256 "54d4a571123913eb7a305e839099708aa893ed4407bbaa59c69c08a6663db0eb"
      "pl"
    end
    language "pt-BR" do
      sha256 "7faa8240f9c113df3c1a1412c3894cb3f34d5cc0c495b326ef0c868ed1426bd3"
      "pt-BR"
    end
    language "pt" do
      sha256 "8cbcaee529d039e1c7ca547f65121a587b98e85011725f4a906bff0c577d5519"
      "pt"
    end
    language "ro" do
      sha256 "d5364637f6cd2cf804a5a63e82379c6595858026579afbab8c42f45f8a4b15b3"
      "ro"
    end
    language "ru" do
      sha256 "26d5126ba3a5ae2df9b56ee1d646137059db02e818acf421396d291dbcda43db"
      "ru"
    end
    language "rw" do
      sha256 "4ce4513c2033ee2a9cf27bb0a6d13517e138370f97970a17b6ce5d0aa78efd74"
      "rw"
    end
    language "sa-IN" do
      sha256 "cad5b5fcc501637a15590b33a6ea406f33d96e3851248cf3ce8c39b5dbb7bfad"
      "sa-IN"
    end
    language "sd" do
      sha256 "6226d1b66401ee567f732ee73f5d0c74fd12a0c60d0cdf06aea578cf84c27fa1"
      "sd"
    end
    language "si" do
      sha256 "e4ea9c222de82717ca031cedc44070d56ea63046ca4ca07c8978d4f95cece4e6"
      "si"
    end
    language "sk" do
      sha256 "3d0d825995cc2455e5d5da7f6b23cd12db572b30e2327fd9dc682ea15bc0f2ba"
      "sk"
    end
    language "sl" do
      sha256 "980eec22bf9d2ae1d289d6132f633c71db96a6afa77755cb163119759536169b"
      "sl"
    end
    language "sq" do
      sha256 "9492a50e55ee606abb234b2a8aaf5764cbe2d0a4b182d34ce9ffe801db61fe17"
      "sq"
    end
    language "sr" do
      sha256 "1563d422793b2c6df2dd16fb0a5597f7ed00da254fecdbbce0d448d46a9fbb16"
      "sr"
    end
    language "ss" do
      sha256 "06d266af32d7d12d059b19b753aa95688bba19ebb14716204e84bdc4340d1d2f"
      "ss"
    end
    language "st" do
      sha256 "a8af58489043ff5f9f449a97923ac62d5bafb65e59fff82a1df3aa5579f2f313"
      "st"
    end
    language "sv" do
      sha256 "a8179ebcd0ec5f0e5c2c029de80e7200bf161e215d35a1f0420519d3fae36199"
      "sv"
    end
    language "sw-TZ" do
      sha256 "dddef9acc3b568767c2f1bd5b198b7a8f4b48b92aae26ccf1947784f7b6a213b"
      "sw-TZ"
    end
    language "ta" do
      sha256 "60e19c4111a1894031d545dc8916ad494d1b4d40aae6025c9880ab8655d90de9"
      "ta"
    end
    language "te" do
      sha256 "3b33bd9f7f808d685885773a377efaf01cdf57d3430ce8403aeaf7fa906094d6"
      "te"
    end
    language "tg" do
      sha256 "938c88cbebc03ccf399adb3f93a01659bc326f6f0270225e12e7afd22d3075b9"
      "tg"
    end
    language "th" do
      sha256 "efb791140c2fa3050ea7d70262bf568f7d3f88cd6a38d59e1a3fc0551143b36f"
      "th"
    end
    language "tn" do
      sha256 "71e808fc4c756dfe3c03e9d13e69810a08444201d907c0ed345767f0832a1497"
      "tn"
    end
    language "tr" do
      sha256 "fabfc69cc5a2032b99594892bf466149eccb4ec742c4b82dfe465b8aa47349e1"
      "tr"
    end
    language "ts" do
      sha256 "c0a37050230465bb934a9c1a2ad66c2b1a46beaf38b19cd981b1da8239d187e9"
      "ts"
    end
    language "tt" do
      sha256 "3696cacb5d226b2152ae3343e2521b8ae4ad45daebb5c05d811a6ab5ea45d9cc"
      "tt"
    end
    language "ug" do
      sha256 "25d2c510add5330d67187342535561931d825f5c8ae4b9842d97a7e258324e9e"
      "ug"
    end
    language "uk" do
      sha256 "9aa578aacdf7a984209fcee6ceb7e66c207bb2ffac76342e2ba6629bf0f3ec0d"
      "uk"
    end
    language "uz" do
      sha256 "5d8e7be2517cf78f292824d0278d02f917d7ac6d6a9eaf3dc693022680bf4a0e"
      "uz"
    end
    language "ve" do
      sha256 "49848ea745c68fa8c8083e0b9867ce49dd2f812778716b4663c432e3577cc964"
      "ve"
    end
    language "vi" do
      sha256 "205364ccf13fcc5fa523f33035049d445772b565723d07123bb2aafbfdfa08de"
      "vi"
    end
    language "xh" do
      sha256 "a482f0bccef9e692a757bc11fb5bb93c5f76de877c875682d89e4ad41cbc1c29"
      "xh"
    end
    language "zh-CN" do
      sha256 "c0c3ed059831234421099c4c30da28444dd3b64942185e0f2cd546df0c826ddb"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "aad93172901911cdee214d9a12fbc62655e154e6acc245a6209f9abe27f3b182"
      "zh-TW"
    end
    language "zu" do
      sha256 "fd779f8de9130f801d99ca39ddfc3faeb57750888d6296901400f1e13f46b258"
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
