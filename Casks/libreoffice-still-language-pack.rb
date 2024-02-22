cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.6.5"

  on_arm do
    language "af" do
      sha256 "55dedede95f3104635a65acecf009564ad1c973e5dbfee5c7ca7b30840a8c03f"
      "af"
    end
    language "am" do
      sha256 "e02a272ac3741277ffc9a41be5c208c1d492c454329a7c19cf739d0e2946ef56"
      "am"
    end
    language "ar" do
      sha256 "47e55ea266f86e0a38ff9e000e7e5fc3a4118321e82cf7f09e9fd96a3127aca0"
      "ar"
    end
    language "as" do
      sha256 "5dba8594fea42a0292584d1852094348b9864fd3e2af7fce709cc7e10575ab00"
      "as"
    end
    language "be" do
      sha256 "1fde332543df6f889074cd2e4a382f4755f2f412bf68cb01bcd87e9b192d46b6"
      "be"
    end
    language "bg" do
      sha256 "bdcca42a8fdd13aa6e23a70e5df4207694d0fbf8a2f5c191869ee3a85dfa4023"
      "bg"
    end
    language "bn-IN" do
      sha256 "8d0c0bb9a71cff316e92b0d50802ac2daee344e8241aa568d1406155c9f3be34"
      "bn-IN"
    end
    language "bn" do
      sha256 "b929c1ae7f58fdffb34eaf3e27888bdce2169b9258fd39764978002f7dcf0c47"
      "bn"
    end
    language "bo" do
      sha256 "f4dabe217dc18d883a69f945df430bd81dff9c96df6e1a0b1736ced0051f85ec"
      "bo"
    end
    language "br" do
      sha256 "82c523d92c90cad85c0573111ece487d570b91591a913cda69d3de98af79e94c"
      "br"
    end
    language "bs" do
      sha256 "500938f77e8083797bd6e0d30e0774c77bc0f8f97392dfbe600bc866720100de"
      "bs"
    end
    language "ca" do
      sha256 "dc55acc1e52f137bf551ceebfec095e33fb632d2427f498edacb2cc46a396ff5"
      "ca"
    end
    language "cs" do
      sha256 "4cc8217939300c9d730cf29d44be1f43160a1cefbd7ac0860293cdc7e5c98c5e"
      "cs"
    end
    language "cy" do
      sha256 "c593648700ac95215314ae94a3dea6f8713f45a168d874d65d2b46d4279db6df"
      "cy"
    end
    language "da" do
      sha256 "cfc7edeb6968007ef629484dbb19dedd6ba65f1300fc2d7378b2251c73fb8abb"
      "da"
    end
    language "de" do
      sha256 "ee00b1ea96a38b1edbfeeb64e2306109f8767923357b7fb85ea6cd1dd0f4c090"
      "de"
    end
    language "dz" do
      sha256 "58482188e48a6e936aa8acbb28d25b866416bb6bfe6f2f62722a019745a7a487"
      "dz"
    end
    language "el" do
      sha256 "b95570885c16addfd1e2c2d0ba6c2a95c5c1b173c3a388e3097bf2ee27cda44c"
      "el"
    end
    language "en-GB", default: true do
      sha256 "9dbe711eb59354a7fc862b00384ca94c0aade35baceb30fa76e5c07cab3f1f06"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "5e2caa00f3ac8ba6f8ff3f677f7b9b5a47a894a603fdc93fcbd55de19026c245"
      "en-ZA"
    end
    language "eo" do
      sha256 "a1cca30d6ab7611e046d181e6e6acf36d7a8c12e887d77f21fa3964d8b1caeb7"
      "eo"
    end
    language "es" do
      sha256 "6d2c46ed2f78fbfdbaba8a98e42b73d50268526a963ac74c29f7d72b1aabf123"
      "es"
    end
    language "et" do
      sha256 "1627200b8a0bd02bb7b2fac4d74783e15037a7fe707ce9ee4185dc2296348a48"
      "et"
    end
    language "eu" do
      sha256 "1f05466500201c04312f2bd55d6bb1f51850873b2756e2b56edc03a60ee49d55"
      "eu"
    end
    language "fa" do
      sha256 "0ac3e47a42649dfb8d7a0b10a130614a2e279bb2eb677b6158c6ccca67f91e67"
      "fa"
    end
    language "fi" do
      sha256 "d148cfac7a96548075559b441952512fd50a85d8e37fe66559d6111ad90f67c3"
      "fi"
    end
    language "fr" do
      sha256 "37f06b4cb8bc33281a18fecb93dcac998a83a240350b8cdd6894ccfe28f3e18a"
      "fr"
    end
    language "fy" do
      sha256 "53a9076b93551bb5df2ed13726af5363a988b87608f0a3c0a137daa16b38aea4"
      "fy"
    end
    language "ga" do
      sha256 "06e508533d491e5a8222b014b948f901c4f61fc5e7868ef65309cf6f4bddea7a"
      "ga"
    end
    language "gd" do
      sha256 "1da923b27f94ebef706dc15789befc5c909f739729919a0221512117bbb316a0"
      "gd"
    end
    language "gl" do
      sha256 "9b54f0f4c392859314a399038974b3ee9c2c82d0509cc28378dd7ed95412f622"
      "gl"
    end
    language "gu" do
      sha256 "465c4b605576c240a3bbbf2a6c63e68399fe641d10d05e908a0ab2c006ed3174"
      "gu"
    end
    language "he" do
      sha256 "4dac67c1d1ec1ac47e17aedf6679b08d44c2dfcc79a7643b2cfdd55eb6e67293"
      "he"
    end
    language "hi" do
      sha256 "b5cf1194e2ef18e81ee49bfed5c96cbc8b9b33c1eabe2e49eb6cf94cc5d677f4"
      "hi"
    end
    language "hr" do
      sha256 "a8186ddca40f44e71047bc3dbf985ee7b58bdaa2f112108810dda8070185fbdd"
      "hr"
    end
    language "hu" do
      sha256 "7e9870e31776f0d8c8fa74ea8e5fc8bd86108ea650ca2563075b9a53016223a2"
      "hu"
    end
    language "id" do
      sha256 "0d6f35d4ce8a4d946102750824c9b4a8faf253556a890bf7dbbec86107df5e81"
      "id"
    end
    language "is" do
      sha256 "21c53be9e15dec3cc016390ed5aa6e177b28683d4843651a8c35f4ee38e6e544"
      "is"
    end
    language "it" do
      sha256 "61dde750963960e8d501b3bd43063ff7deb025210ee0fb7377d6645e2d10cff0"
      "it"
    end
    language "ja" do
      sha256 "242eddbeae167bce90c9fe1d7215f5d051fdb2a1c2ac79672371e1b288da6073"
      "ja"
    end
    language "ka" do
      sha256 "5f0f4b99a0808cbb8b947d9c3f1900b2ff7b051649f1d2899c83800ae4971a63"
      "ka"
    end
    language "kk" do
      sha256 "16fd3d8ac1159c9219bf3d2ce567b186e0df99b9949f8e0015ced620368d84b9"
      "kk"
    end
    language "km" do
      sha256 "cf9f07b09ee584e6c8284bc8646408b2b27f91780f2a0eb268460c6dd787cba6"
      "km"
    end
    language "kn" do
      sha256 "587c0df00458f9eb84d3fb8d7531600bb77089fa7a15b26030fe3b4c3127e1a5"
      "kn"
    end
    language "ko" do
      sha256 "8608407bd21fbbb1d33e20e55ba0ed70e13bb805dd0f2014349a491816452b2d"
      "ko"
    end
    language "ks" do
      sha256 "e7e3cf5c7ee47d3464a3282a6a31a0a585225d0a76ea8b2ef10c6e0641385a3f"
      "ks"
    end
    language "lb" do
      sha256 "9c6ab3e22cbab345cbcded1ad75aeb688c8b1ae654bac52462842f701dd62d68"
      "lb"
    end
    language "lo" do
      sha256 "a86febdd0237abc5961ef267e511914ca456d616c9c6837a64edf05cda206aae"
      "lo"
    end
    language "lt" do
      sha256 "0ff890b37ca44ea47dc983cb7dde489038ebaf8132a05adbf73b618192f84da8"
      "lt"
    end
    language "lv" do
      sha256 "34a7928347dee73c4765cfaefe57569e113b64d46c3a472be978c031d0b5b120"
      "lv"
    end
    language "mk" do
      sha256 "8869c45cf87ebe28ee06e45675482ca714759570cbfda2413e54d98eaa838c93"
      "mk"
    end
    language "ml" do
      sha256 "3c76c5e5250697235a93d5616abba2f319f27941290ee2e557f80c587cc46018"
      "ml"
    end
    language "mn" do
      sha256 "ef0e1a04bb0f376ee224725d681fbeb79557b69e0789c7db16b4c99c88965fe2"
      "mn"
    end
    language "mr" do
      sha256 "f00138b016d26d0f028b746f47101202692a9ef7d7766afff75821acd7c97ef6"
      "mr"
    end
    language "my" do
      sha256 "42367750781dce0a2ccf16f05375ff2a1e66d1a1ebaeb3e837675bc9e3c6ca35"
      "my"
    end
    language "nb" do
      sha256 "85ee4081523ea069e0c210495e70c05d4c833a0b904c364c50bba6c0ca5bf355"
      "nb"
    end
    language "ne" do
      sha256 "9c31b250c14b67aadcd9bc32fd8ce332e86d6378990875e5c9d0417a7aadef83"
      "ne"
    end
    language "nl" do
      sha256 "4e008cde16b26c04da9bde9eef6224e7d7e8275a504d34b27bed45867f5d2241"
      "nl"
    end
    language "nn" do
      sha256 "9a8e50488dd146bae2afa29782e3389e437227a3b157b1ba2e6261fb4416c39e"
      "nn"
    end
    language "nr" do
      sha256 "376f29af4f85dc89be68a6adc2627b010e3eedd1eb8ed27674aa518d4910ede6"
      "nr"
    end
    language "oc" do
      sha256 "cfa93901069615242dc3c140aebefc021661405d56cf82ca11eb793edcba0306"
      "oc"
    end
    language "om" do
      sha256 "f20aa69c9e6fff0ebc9d3e6c2bbb8eeef588c5f53ef7840f0435d4dad784f0e0"
      "om"
    end
    language "or" do
      sha256 "29a7fa295f8d9fbb950960715b8928ab19648366ba1862f21a83298c77133320"
      "or"
    end
    language "pa-IN" do
      sha256 "1d1f3141fc0c0c6d0589efc139fadd78caabfc917e352b73569b00530b5df9c5"
      "pa-IN"
    end
    language "pl" do
      sha256 "0e439b8efef3889203d7f096701da8b13a6d2e4568e3d416e92bfb99c4ff5049"
      "pl"
    end
    language "pt-BR" do
      sha256 "08f6afd6023164e01f2ea8fdde2dd86f641490515a7a23e71003a94df281465c"
      "pt-BR"
    end
    language "pt" do
      sha256 "c5005b92158e36149a1fa3b95ebdb58360526e5c4d2e990aeaa4a470e254b6b7"
      "pt"
    end
    language "ro" do
      sha256 "fb18008e400dddddc19eae5c2107090b814caa366250af8a17c89235a6299019"
      "ro"
    end
    language "ru" do
      sha256 "c3d6adc4f2178049c3df31bb91bffa191afcdb6f66977d0cb68f383eefecb5b9"
      "ru"
    end
    language "rw" do
      sha256 "f4ed1671b21d0ba83eef0e9ec00b8b19aa2b84578ae99ee5fbe9f53f3ea7f32d"
      "rw"
    end
    language "sa-IN" do
      sha256 "7869534ea430186e4d16888f4b294a0bbe54d1729eb29284f6df6916bbe34aff"
      "sa-IN"
    end
    language "sd" do
      sha256 "ead39010844af0e2755847f1200586cbd12c1b456a4c29c85f30c9a32585de30"
      "sd"
    end
    language "si" do
      sha256 "f4f6f2ca050fd26e1fa7d1202c09f9523ec1954f3e4ce8c03da7d968ef315d8e"
      "si"
    end
    language "sk" do
      sha256 "9a72606121639795488742c6b3456f775248e65f061228d5e0fba4b22109e942"
      "sk"
    end
    language "sl" do
      sha256 "b2c05acabf97526c064d257482da503040385a6fdbff74de448fe53a8cf4a692"
      "sl"
    end
    language "sq" do
      sha256 "0ac3d5ebac053003c8ab76774f97e72ae86db84102c90b107d2315639c82381e"
      "sq"
    end
    language "sr" do
      sha256 "9f5e621105a514b1398a8015b123bc6f33755760102e8b18bef01ba1574e6227"
      "sr"
    end
    language "ss" do
      sha256 "1c20f1fb5a6345026d025cdaea4c0364df54c444e60711a04e29c74fcc530883"
      "ss"
    end
    language "st" do
      sha256 "500b23bb95853d95ae35ed9f18a4844e63b952ce9e7544e88e251d9421847bf3"
      "st"
    end
    language "sv" do
      sha256 "07674b993610f9e92bf429e58abb3da26baa64346e1d53bdf9e3557d93720d64"
      "sv"
    end
    language "sw-TZ" do
      sha256 "c4ec727124aa856026044d52721d77c8a68b46fcde42592e1d54653df66a251f"
      "sw-TZ"
    end
    language "ta" do
      sha256 "2040624ffec19348df966afc76f81c635f149a83351ec5981cff8a2d183992ee"
      "ta"
    end
    language "te" do
      sha256 "a8073d55f07aa241e40a7d39b754d9c1c63edc55df7d9e93560036e0795582f1"
      "te"
    end
    language "tg" do
      sha256 "c0ead6c61f15a594acd6282e38cbbc53338cecf5e86fc6fa8d2580603ab74fe5"
      "tg"
    end
    language "th" do
      sha256 "00e3b55cb9bcd02124f8f9887bfc14d3b622e83e0f57c483d3484e6f6f727cfc"
      "th"
    end
    language "tn" do
      sha256 "606afa9808ef80ceb48925a42076658c3a0a34352630cb0287d48517650e06ef"
      "tn"
    end
    language "tr" do
      sha256 "80cc0e42bd70c5b0c9b137d346f66835e1eb2838cd6966d6294418c4032834f5"
      "tr"
    end
    language "ts" do
      sha256 "c03fc48e41d2264205f26d7ad0c64c437b3ecc6a97ff37abfc7f97f0f2177463"
      "ts"
    end
    language "tt" do
      sha256 "2d565a36fb4da7ac1af46d982ce404e6181e79b0ca06ce609dd287a8b737f96f"
      "tt"
    end
    language "ug" do
      sha256 "3763c054064421b3052bd7a4b9f9b3ac178a6089dfe7c9d28a479a99c44bca35"
      "ug"
    end
    language "uk" do
      sha256 "183895f4591144115f77a7bab146eec06dfec2ed08721c5a29fe99dda9ec3fc4"
      "uk"
    end
    language "uz" do
      sha256 "bfb34a2e02fdb035a0e7d3e8c43127b3a77c9dc5aff5fd7ab42d10497ace47d9"
      "uz"
    end
    language "ve" do
      sha256 "3d3966c693f510da5bbdd645ccd2e6bbf079a677cf3ae773519de1e79c45655f"
      "ve"
    end
    language "vi" do
      sha256 "f1d7b4f69c23139bc52d1e25dcb52daa87b02e5d14a872326e9731ce1468e518"
      "vi"
    end
    language "xh" do
      sha256 "d75d02e7f12bb8f48e00061267165c440509254e0c3933eeccc63f59a893d97c"
      "xh"
    end
    language "zh-CN" do
      sha256 "b1d4a51bce72246ddbf07c2bdfa77a4b6d782765fba72f252914594a95053772"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "4203daff7cc1064ef38c309bd2d7071975a1ed192929633891cee75375dd01c3"
      "zh-TW"
    end
    language "zu" do
      sha256 "630f09bd1683c952ac2f71bfaa164190e38ff95c104b87184e685a286bc87a21"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "9fd3074d5c4ceef2a2a274620ad1ecab52a69fa9d4853d2179b3acf10693f898"
      "af"
    end
    language "am" do
      sha256 "b5efcd2164e502f53fc267459076993cb63a1b13fb2b2a82b4a11072df95b9f6"
      "am"
    end
    language "ar" do
      sha256 "0de8a0a717123fb9b1a889e9f40e5e48d22d9794bb3dbd9337dc0b0fac6b0ad1"
      "ar"
    end
    language "as" do
      sha256 "1a18b6319c54a2a1b85c5b2c6d31226727012aaa6e566efb29fdfbb2b7c3da1f"
      "as"
    end
    language "be" do
      sha256 "9cb096cac45c9ea19c572a4eb0f3d75e4e1b6d0999a7fb2f673f7d2a4b3aab29"
      "be"
    end
    language "bg" do
      sha256 "e458fdea5fb4b9666a311ff27422f6179a50d0f1bd162cd4c07fbc0f089a3fa2"
      "bg"
    end
    language "bn-IN" do
      sha256 "2d352ff3307d4476c44f0cfe3503ecf82dc6de58e4be223b08a89f9bfae9076b"
      "bn-IN"
    end
    language "bn" do
      sha256 "ba3084fa82bdf489ac13b551d33a6d28565e7d43d7f0fecde2dfe3217f80ebdf"
      "bn"
    end
    language "bo" do
      sha256 "13f6fa5cee3f2e3ba2d644cc8d5409d46d03d92e047bb9c3b8b940dcf497e6c6"
      "bo"
    end
    language "br" do
      sha256 "ba7c31db32ce4341aec90a481b7dd5a33d502a8703e27a3edee46ea0d0e2c822"
      "br"
    end
    language "bs" do
      sha256 "ebe0d8b4feb1db34fc207b3f179d1354a576046c94d7f69a4b2107c6a99558ed"
      "bs"
    end
    language "ca" do
      sha256 "c03583eabccffe4ea5172c5791df88032eeb9b440a10d964372f9fc923c53591"
      "ca"
    end
    language "cs" do
      sha256 "b5ce6f09a4d6c85000c40317fd90045c2b66e5d8fbb50beca6971715240960ee"
      "cs"
    end
    language "cy" do
      sha256 "f5c240abcc41df9b0446da79227afc1cce39fbd658d30c915750ec3a7224952c"
      "cy"
    end
    language "da" do
      sha256 "af296cb8cecf4618f536b207994f09e9581585c91d6b019c9b6130b6739ec3bb"
      "da"
    end
    language "de" do
      sha256 "30cf108b4a95603bfd3cb33b827483b281dc4e8aa019d1fd3a2c66e25dd59483"
      "de"
    end
    language "dz" do
      sha256 "320705e56309a2acad8ebe5ca64b9cdddbca8f01be6918dcb82af3f5e1d636e0"
      "dz"
    end
    language "el" do
      sha256 "61a37c3ad925a3ac62be3ed0d07785c0f78e662c831a3e5606fe0fb4830fb22c"
      "el"
    end
    language "en-GB", default: true do
      sha256 "6fc9da27330636f8f8d11da8c6ebe6b2a93d77c7972f9fd200dbbbf6e0126671"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "3403bfd291da8f9286d185112175203a7197ccbbf6f5f95a4c468cc0a8ef849e"
      "en-ZA"
    end
    language "eo" do
      sha256 "cd174e40a29dec4aefdd583f702eec19a5f466df0418b13030315ceec16b6058"
      "eo"
    end
    language "es" do
      sha256 "746f185554f8de26b21608d63c6571e3147143de5dc47a5d9a1ca03a807ee522"
      "es"
    end
    language "et" do
      sha256 "f65ececcaf10b951513aa6b873dfeeba3523d0a92a1e04b36a3cc601f2a54a41"
      "et"
    end
    language "eu" do
      sha256 "1faa4f6da68ef4e37f32bf1da0bd691c49b816800f07528a528529bd48aaa132"
      "eu"
    end
    language "fa" do
      sha256 "6c3ec8c0770233e8e5ed068f5e78ebeead3df02467635804de7ab5ae78f180a7"
      "fa"
    end
    language "fi" do
      sha256 "279c244c39004d9dc6d34089272daf9f4de191712aefa271fb2b7a4f6c9810c9"
      "fi"
    end
    language "fr" do
      sha256 "1f90fe1237891067b78248a8412602cebb2816dc663e11db2668a610377b0bb7"
      "fr"
    end
    language "fy" do
      sha256 "8d94fa62e7238bb0839b51b61fce3ea6c6e60ebb72c1f37c8cbf3c9576ecf909"
      "fy"
    end
    language "ga" do
      sha256 "4076c4261165b4bac1ba121978e287c1d20c1411bd09810d9a451c5d4ea0f9aa"
      "ga"
    end
    language "gd" do
      sha256 "59c7853b669e9d6d72c1dcbaa3618b2c2baad971d168c401b4e7c9ebdb17ab6d"
      "gd"
    end
    language "gl" do
      sha256 "d453abc2b87fb4b78d90162b3e77e114cca1cdaf06317bc075904735467c0439"
      "gl"
    end
    language "gu" do
      sha256 "d27a0bd3714602ef7cd15372c2650f6b69a550252f0eeda0ec153529453fc248"
      "gu"
    end
    language "he" do
      sha256 "833d60e13ab1a1537750d1a9e567f3c3cfb032a33672ebbec8a45e1105a9d507"
      "he"
    end
    language "hi" do
      sha256 "3a10ce95d8ea37ec5847b3fac878788ca5a86c857697b253c9c307b3f6958565"
      "hi"
    end
    language "hr" do
      sha256 "58fbe9f81a076f6a08ba52df844b742ec2703c7c07e64fe803474ec55ec34492"
      "hr"
    end
    language "hu" do
      sha256 "7f8bbbfedf5d88c6add6e8802fc80544a4ce27f9e368a2d5662156a5bc7cd425"
      "hu"
    end
    language "id" do
      sha256 "cca26963a69d9708ee6c9daaa0d10de33041ddc5d1d155500f990afff0b48b23"
      "id"
    end
    language "is" do
      sha256 "91627a050492cd513e7e5a468ab31290ae857ac3be0afc4d7eddba74879821ca"
      "is"
    end
    language "it" do
      sha256 "a8e17d123dc55d66a713ce843b3b823335ad4614324c6e364e40d3a430684241"
      "it"
    end
    language "ja" do
      sha256 "5db16924118ca206168a059469870ae7b2a4cdd1e162907a38df68d033c55f95"
      "ja"
    end
    language "ka" do
      sha256 "8edc2cbc5a72972949dbd956181667e1b9e9fad02cb44a737fd1ec8a4b179e40"
      "ka"
    end
    language "kk" do
      sha256 "dc9ad9f4e44997eb7556733d0b5c08df5b25e076b3b127576d7df4045734ac5b"
      "kk"
    end
    language "km" do
      sha256 "225634f45aa69b544faf6e7eb1aa8063e03bfb0de34b1343e43fa0fb751fdf10"
      "km"
    end
    language "kn" do
      sha256 "213b73f84930df66331e67931fcb6223fd5735295766dd34f322d54933d2324d"
      "kn"
    end
    language "ko" do
      sha256 "5d736818066bae744aaabab7031df36b82071ee4f1c4a476876150134bcee7d8"
      "ko"
    end
    language "ks" do
      sha256 "ad79c08f2c3ea75d7096e922bdfc2baa07a485baf13dd7f93b6cc44d7f62b171"
      "ks"
    end
    language "lb" do
      sha256 "2e875679d79e1970ef17c6e17494f9669aa9739840e9e47dd92466c1f358eca7"
      "lb"
    end
    language "lo" do
      sha256 "52b6b6fef4281e9496255b6ac214e675b0b63bb85295a6539279f14e7084b5f8"
      "lo"
    end
    language "lt" do
      sha256 "db2379d0fb7f4a89527c3e5adcfec2b0a85b092d369d93f58da6df9ffb6e2377"
      "lt"
    end
    language "lv" do
      sha256 "7296fed12a05060143656a893db5d72707b9de4c51304eb3dacd45fab6a014c9"
      "lv"
    end
    language "mk" do
      sha256 "0ce9bc9ee1df46baadd55c2ade089cf12ace04932edbd44851169489302463b6"
      "mk"
    end
    language "ml" do
      sha256 "73d019f7cc111380b903f55728a0c2f335bceaa585a3b1cae4751796d0a163bb"
      "ml"
    end
    language "mn" do
      sha256 "7a0d4b06ec4c47bf441e28d28db21aadfe03ea5e998183bfc0298275fb9b4acf"
      "mn"
    end
    language "mr" do
      sha256 "b764ced87ded84d1b11b3f85770b0fc13d7707c5718f761ae9ea680039e086c0"
      "mr"
    end
    language "my" do
      sha256 "82c9f97cf8a7f6f8c5bfe84663074f6edca4a9f1afaac79cc25ac65e3e5bfa65"
      "my"
    end
    language "nb" do
      sha256 "eb258fb3f1b090544ff31ec8fc427e09d5fc709e3991bf0d0aa936efafd3211b"
      "nb"
    end
    language "ne" do
      sha256 "2c2cf11620898e283143b111ef93d35983dd3cd0249c4afb22996b99f0edf416"
      "ne"
    end
    language "nl" do
      sha256 "f9ca0a3deb9676807ed473646dad9cc2e9e5e889872fa7756c841d61209ecdd1"
      "nl"
    end
    language "nn" do
      sha256 "53906396267c1fb313f7253113a9d63f91cb6ccbc623d47d2dcd30c9ce3ad9ef"
      "nn"
    end
    language "nr" do
      sha256 "aad1bf23a852b13a276f2a9a8664a85358d1c9c55e8f8331905b6fb1f7bc6003"
      "nr"
    end
    language "oc" do
      sha256 "68c2db8b6d1589f16d792f08a188981968b8d6b5e3855dad78d9ccc70a3eec54"
      "oc"
    end
    language "om" do
      sha256 "476c59de7128578c7bf5e0c3dba11604895cffb22f15acb936df4d83a16ad1d4"
      "om"
    end
    language "or" do
      sha256 "b1d84235c4363ff8ffedf1a808eebcb7059ab59ff1d8c0cc0970ccfb8ea18f2d"
      "or"
    end
    language "pa-IN" do
      sha256 "a063e1dea0016b322f4ffacdec4e86817a6f745a284c6013fdf1be2cd3a6de0a"
      "pa-IN"
    end
    language "pl" do
      sha256 "9ffaf49c4a764db1a394596b9aafa28a27fe4aa4a4a4112f62c2d4eb3e3dce2c"
      "pl"
    end
    language "pt-BR" do
      sha256 "a8da49746008b513a672247e258eaaca02693bb359bc33c15addaf34c0af2af2"
      "pt-BR"
    end
    language "pt" do
      sha256 "4e77ac38a8ce969b5e5e03f945789d056313c3959a0aaa61b229f0f247cdd925"
      "pt"
    end
    language "ro" do
      sha256 "8e1d80b402344d206a08fabedb7bf0f91b9ac720425c97d65e8109a78b81cf2d"
      "ro"
    end
    language "ru" do
      sha256 "76ab4fdee3ea7e0f72d35269ef17a28005f35ed0010ea62e574efd9865e2dda0"
      "ru"
    end
    language "rw" do
      sha256 "2cc670795c153ca60db4cacc6924e4891116e6b82280baebbb6a90025e2990b5"
      "rw"
    end
    language "sa-IN" do
      sha256 "01a33ac0c1fb6c4b4b3ced00c882020d5147f484eefaaf0f8621979c436b729b"
      "sa-IN"
    end
    language "sd" do
      sha256 "2f23eb6c45c5d8b7e6a0d32e6e09656652d12463b43c16f02fa87d87a1e8e1c3"
      "sd"
    end
    language "si" do
      sha256 "45f67b7ba13244b7d6b07e31d2c57da600e9e559f018e7822c740d9acb13ce90"
      "si"
    end
    language "sk" do
      sha256 "57a674060e8d2587aa358ee947c23ed2a8d849df02d51ed4f7c6ae9213c2dd34"
      "sk"
    end
    language "sl" do
      sha256 "008785fb2cccb9fbbfd02a33128bf4a0239cb2eb48b6182a03f80e21abf72797"
      "sl"
    end
    language "sq" do
      sha256 "eb97093d4366459806c1d51b67ab308c6f438b634514bf55070ccfcbe521af98"
      "sq"
    end
    language "sr" do
      sha256 "19f7640777c7e385ac320888e4c43e3a4f354f9cba472f1179c8967c548b2180"
      "sr"
    end
    language "ss" do
      sha256 "33748a2fcbca47c343e7b31d459fd285d6fdc5abf3120040bc676a56fb8b0d4d"
      "ss"
    end
    language "st" do
      sha256 "2083f2c63ed49b4be5b57a73c153f338de2661c9619aed0b1ccc393b794075c1"
      "st"
    end
    language "sv" do
      sha256 "15a99131101bfa43c0f95be626fe71b48b3f51943d7087a2c4c9c882abe11d10"
      "sv"
    end
    language "sw-TZ" do
      sha256 "313c9797a547af97a2021c8ee7c260979685774d8f8970e7cd152e0981bf8660"
      "sw-TZ"
    end
    language "ta" do
      sha256 "2d30c5dd6c98aac9732f69348413d199cdd9cde0bf08132e2d7693e7333e8ba8"
      "ta"
    end
    language "te" do
      sha256 "3573be80b5f7f20fd59829b57d681672fb6bc44d865a310915c5a78c94c8a535"
      "te"
    end
    language "tg" do
      sha256 "263e6d4507860d9c57479591133c1ec6abd4b284aca20017ebfcb6167c8e2d93"
      "tg"
    end
    language "th" do
      sha256 "c677c60d30b3728499e9306e9adf5d812f509d8e9d17e12707a64637d42558fd"
      "th"
    end
    language "tn" do
      sha256 "be466115d490caab8110598bc72797dfc11b170cef3d64ffe42ea98fac8c6a57"
      "tn"
    end
    language "tr" do
      sha256 "5d6ce3a8187532c8f38a142d61581548b3d04b24d301ff674fd9ed83a32c5528"
      "tr"
    end
    language "ts" do
      sha256 "407474862e4a0f6c760647473f9d48f04d042658b1f6e4ce2565aab26e606a37"
      "ts"
    end
    language "tt" do
      sha256 "48289b73769082b36254b9f21632bf7bab12189ac18f8b11f6e97ac72cc47538"
      "tt"
    end
    language "ug" do
      sha256 "5e6e1feed30d97cd4e57d862f4e1f6bdb0731d51da2bb4b34d52483176635870"
      "ug"
    end
    language "uk" do
      sha256 "cf037304729d68bd5997f167fe2751c50ba4b6c8bd74a693b9a77152606d512e"
      "uk"
    end
    language "uz" do
      sha256 "55b302456d74d29e2d206f49fd24f99e6c8a7439bdb3d63671a7d582a73b88f0"
      "uz"
    end
    language "ve" do
      sha256 "cd44d3d8989b94205331808028d773b6191a8081aa5e9c3e1d747f5783b5f3e4"
      "ve"
    end
    language "vi" do
      sha256 "fd1408c89666ac99254f6ff774eb785cf7b5d97633688b80416ba8cbfce970c9"
      "vi"
    end
    language "xh" do
      sha256 "cb766c73a7b0c255a0e74f55437d7ec1ae3aa7f2056fd8423d6060e054e257ab"
      "xh"
    end
    language "zh-CN" do
      sha256 "c91cfb87ab7c859156b9bd7bb9fda69be9b867fff8b421a7b8bfcd46dc8b06e3"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "9e5690bcd47459c7546e7b893ab15ca45600885ecf20a7c8cc952895888659b7"
      "zh-TW"
    end
    language "zu" do
      sha256 "0c616493eb4b2531d6f90a4f39b0b1b807e77a62902a8d68a019d8826513cfdc"
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
