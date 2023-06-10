cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.4.7"

  on_arm do
    language "af" do
      sha256 "2ef3877e8d0c0c1445e11d50f1c91afd2ce9a6775a614f85e1f5245b045a0e12"
      "af"
    end
    language "am" do
      sha256 "489f8b99cbc45e1864be3f13f8f77772418160a9b8bc28a2f44f26957b190572"
      "am"
    end
    language "ar" do
      sha256 "5c4c7787cc104397fed64fee58bf3dc731574737c8a7568b05b8dcd2ef88e5d9"
      "ar"
    end
    language "as" do
      sha256 "230a2e1d52eaafe680c8faa304cb92bd9cfb6ea22c1c40a3237cbd9be9453d69"
      "as"
    end
    language "be" do
      sha256 "f149eb83a68b25f3ca11981e32b6cce64392167749234ac627ca3ac09dfa3ecc"
      "be"
    end
    language "bg" do
      sha256 "5198fdc85f03a906be26993313a9d6600ead08136c42224d34c665381330a088"
      "bg"
    end
    language "bn-IN" do
      sha256 "7cc96be272f53d71c23e00dd6e0191bb5369bf28fbd2c16f20da711210edd1a8"
      "bn-IN"
    end
    language "bn" do
      sha256 "b9d13bf5ce98271f9eed1f92bb52d6248119584844368e03d2b1dacbaf2d1872"
      "bn"
    end
    language "bo" do
      sha256 "615fc23e6156dd0ff0032444bc503f7e0973d10ca063bbc593c6ca61a0f1d46a"
      "bo"
    end
    language "br" do
      sha256 "0019e08c3a4ae22f3c177430e3115fe074e442f36cfaca9b062e2ed30889bddc"
      "br"
    end
    language "bs" do
      sha256 "3dd3d04c779b23e8185742d157379aecf630018fa36c9ab7da1ebc84eeb26e84"
      "bs"
    end
    language "ca" do
      sha256 "141c47df4a866506060cdd8304932d758394437ce03aa451d9e4a840360c9dea"
      "ca"
    end
    language "cs" do
      sha256 "462a64c369d495542fdb202a9fad524d68e7c3b789effea1b255ea7541c971bd"
      "cs"
    end
    language "cy" do
      sha256 "28677a5d70308502b71d4e348b37814bbe6b5471f4ea42fce753afca7e13bce9"
      "cy"
    end
    language "da" do
      sha256 "501ccb90b3abb5e1ab89effab878ccdb89e7f0c3f9e4657e2a787c6cbd562570"
      "da"
    end
    language "de" do
      sha256 "a1a393516782293536deb5c4a0c3f880ff869e292c27b27af86f840f6fe59cf2"
      "de"
    end
    language "dz" do
      sha256 "fb42ef2668fcc3237d8a8eb8ab5bad2f966d5350e8e1f93e70993d4a747a747f"
      "dz"
    end
    language "el" do
      sha256 "7b20afbdf870e56aed0519f5e48e61d7eef91ed0ea56bf9a8f4556f2ddcf1330"
      "el"
    end
    language "en-GB", default: true do
      sha256 "b00e1588d98c74e86f202cdbf6dc4cee7bb3f67cfcd50f0c0c852196fe3054af"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "f6abc21fc4a14f84eaac386c88aa8091cdfb1b38f28a755956544d124b175f94"
      "en-ZA"
    end
    language "eo" do
      sha256 "bfde1a2cbdd78b985cdf820942b7ef23808be4ba91f1fdae48cf2e756980ae7b"
      "eo"
    end
    language "es" do
      sha256 "59748a7360c1c35e0905565c9a483a1a94e232b70003a9a67f452afb1051bd88"
      "es"
    end
    language "et" do
      sha256 "7666094bfa9a6a5cf7b9b8cf82d4076904896d3851a7e2ded0d7408737fd5665"
      "et"
    end
    language "eu" do
      sha256 "b4aa81756f0063bafaae12850a34deb6bf2a5aeff9e73f07c5938b8f01fae453"
      "eu"
    end
    language "fa" do
      sha256 "7d6e6c38fb70ab4f7fc3df83c334cb5862f5036a5cd6a32af6568976c2d56c16"
      "fa"
    end
    language "fi" do
      sha256 "05094dcc80d20c5fb08ed74dba1b1be554bfcc84ca72cecc674e992aea14c54a"
      "fi"
    end
    language "fr" do
      sha256 "c0cffb4c2848056198fb3a63afd7e1197b1662f62fd556f1aade926dade43fa8"
      "fr"
    end
    language "fy" do
      sha256 "8c696bcc113f32e8aa9da6bb743e57c2210baf9776e489eb4f36b504610cc500"
      "fy"
    end
    language "ga" do
      sha256 "eea2e98e35b8f1390431e341a19d7a4685d5ea03d0436a0ae5ae2fb95dfd885e"
      "ga"
    end
    language "gd" do
      sha256 "ea31f101e1dd01b4dc43af44f2636cecc98df209d066fd194d7433c67113d9ad"
      "gd"
    end
    language "gl" do
      sha256 "8ed49d0beb8b3d47d7387fedb6f6d59340e0eb5780497cae4d1d20a76bd59545"
      "gl"
    end
    language "gu" do
      sha256 "6af18072c496c63776b9b4c197a4c162dd4f2e385dea4460cd17e0a2ddbe10db"
      "gu"
    end
    language "he" do
      sha256 "09c198654fee1c1a56ea50d7273cd2283ddaa17e178a754aedb5b5011c0466b1"
      "he"
    end
    language "hi" do
      sha256 "75e475ef5cd6459146c0eaa50b251dd1ecc3a805a7bfde7b239aad2b7bfc22fe"
      "hi"
    end
    language "hr" do
      sha256 "bab578913512df3f2bd150ca0879e1c8ffc348d908275880bbf0609063a2fbfe"
      "hr"
    end
    language "hu" do
      sha256 "57761bc90661ee89d865a90d9c38bbb1760cd2a88af6fbc888eb1467f8250525"
      "hu"
    end
    language "id" do
      sha256 "89e931a8094538b6023c593d0767c33745e60e38e38286ea58b6839a2fb84d3b"
      "id"
    end
    language "is" do
      sha256 "6fd462a858287cdeccce4fae7bd74c592f41c9167457d273c3f9b2f9432c3312"
      "is"
    end
    language "it" do
      sha256 "e2234733e243adb5ea2d17b402c1c4d3ffda96bf280cb7213fe41027ea86f01c"
      "it"
    end
    language "ja" do
      sha256 "dffb7e751af5df7555b875a0827e81500abd175a2bb3be0ddaedf706bd07c7c9"
      "ja"
    end
    language "ka" do
      sha256 "6025e308dd83e85e93be1be5bc91505b46c5b3626f6a3f79ef41a68cd43893cf"
      "ka"
    end
    language "kk" do
      sha256 "302ecfd8506650c06d02942b4e7db0c7a2e9d934963791249362f27ddac47360"
      "kk"
    end
    language "km" do
      sha256 "fdb3cf6a0c4134f89688614da30cffda1c7f22e67e34058ed5dfef3e63347ac1"
      "km"
    end
    language "kn" do
      sha256 "6a5963c1b8351f3d361bd81469d9319e10e4050986a37cc474b793a23e8d0733"
      "kn"
    end
    language "ko" do
      sha256 "5fccbe70bc067e1b56cb1da1caeaa3caf4878971e043f68cac2df0251801b5c8"
      "ko"
    end
    language "ks" do
      sha256 "70533d7f0321ea91917155e99b9e17198f8c50e7fa3fd1e21696912fa8821c8e"
      "ks"
    end
    language "lb" do
      sha256 "d1a3d5079e1c2217d3fe3fff391c4cfdca39b9d4091cc2007251b030f95d1bb3"
      "lb"
    end
    language "lo" do
      sha256 "e953b186da14831a30bd5da9cfe9c1149c42cf8fe7f3d80d43e30eab9886a8e8"
      "lo"
    end
    language "lt" do
      sha256 "1bab8330aab8c4484f26c1d480baf1c9afea15dff2e76956934b1859336b7264"
      "lt"
    end
    language "lv" do
      sha256 "df6119d5c7c007395cd5b7b3a388682230d7879396172dda77c4155fb15700c3"
      "lv"
    end
    language "mk" do
      sha256 "77a40a6fce4759199194465efaa6fc71a9d11005b1a8230fb55cc5d6c89cc83b"
      "mk"
    end
    language "ml" do
      sha256 "e4af22dd0ffbacad3ba084055189ea42b43022eadfffb97ae27a9e42b3845025"
      "ml"
    end
    language "mn" do
      sha256 "3ae8e0980f3b6c21601a2a69111a63ad6e32d3d5e733201c1cb96296aa510966"
      "mn"
    end
    language "mr" do
      sha256 "ba633dd54ae94a6193ec690038e3be60d66d32636ff79b6cc8403b7d4b38d3e7"
      "mr"
    end
    language "my" do
      sha256 "8e8c61f657ecaecfb7de05f6f905228347984c3df28b8db40990577d324bb0e0"
      "my"
    end
    language "nb" do
      sha256 "69246cd7cc50c581b53b080b697a22c3f6e4fb0b0dcd0a695b3323458461cb74"
      "nb"
    end
    language "ne" do
      sha256 "df62167e41220dcf3fdc797fcf0ddf7d623dc3a5fc93cfddb91a3b29c1497e54"
      "ne"
    end
    language "nl" do
      sha256 "824d117a2c5b36954db62a5f81461de1e086f58667b38117e9d751bb404ef4fb"
      "nl"
    end
    language "nn" do
      sha256 "5be841ae306177aa57413d778e720bea386bb5e925a413b35571a8c1f9da6107"
      "nn"
    end
    language "nr" do
      sha256 "ce12541eb063bc4f327451f71ce0edf293bc450e142a1bd5ed28e8de55afcab2"
      "nr"
    end
    language "oc" do
      sha256 "8115af80b1a00ed9b5d54aaee6e2ed1133b1295625671e3e30b0b00b0bbe9870"
      "oc"
    end
    language "om" do
      sha256 "959f3905a4381023ae927bec0cdfbcf1df6f5bd2bcf144c7bf26063abb8015a4"
      "om"
    end
    language "or" do
      sha256 "89a7de98dfe8d259beb58cd34ebce1e5fb1d161b64dc12259b81470b8c27b63a"
      "or"
    end
    language "pa-IN" do
      sha256 "2775957f34c771312571a10928099629f533e0da4e39f92809d88c8c6e3066ac"
      "pa-IN"
    end
    language "pl" do
      sha256 "e5ac25fbbe9013592e0d1edb3acf192e654578bccb499593a9315c8e4d1cc94f"
      "pl"
    end
    language "pt-BR" do
      sha256 "366d1f725676ab502358633e3d07529245298ce7966d38322ae209eac6cdd1a6"
      "pt-BR"
    end
    language "pt" do
      sha256 "7e94bb303cb99f612e25d0f1048cbb26f9bb755f68b5c933da6446ecdff567ed"
      "pt"
    end
    language "ro" do
      sha256 "c52c8d189162071f447514ceb3bb902a62ce5b679f2edef0c884f35c27d34d01"
      "ro"
    end
    language "ru" do
      sha256 "8af5d02c1dd5cd465f2b5ceed6be73793f1cf7bcae3e9452021dbd16a2c5bf3b"
      "ru"
    end
    language "rw" do
      sha256 "54d2b7dadc83abd0d33dd8db46e57226c1c70c04400199815b008e6cefd3b599"
      "rw"
    end
    language "sa-IN" do
      sha256 "ccf772fb6574dad5fd0ae9a082bb04203f5835b2ce2be29d989e7cdf889cd2a5"
      "sa-IN"
    end
    language "sd" do
      sha256 "ecd95a73a591032208a699a17791c45fb8082a466288b4ab418e7951eb370a5c"
      "sd"
    end
    language "si" do
      sha256 "bf7fef2039d2139f194eb1de3304f992e80a92afd863d3a3f48cefd0275edddb"
      "si"
    end
    language "sk" do
      sha256 "2e4ae454e001354fd1e6e77a458f796185dfae6509ad41b8595e5fc8951c2b79"
      "sk"
    end
    language "sl" do
      sha256 "4c666435270a76d381cb62e46d1ef80e28666713a8e872c99e35ba2f6c7b79ba"
      "sl"
    end
    language "sq" do
      sha256 "5a9e8ed4d81409913e84d0975b8ebc8342754bd435899d82c953e13cc1325d4d"
      "sq"
    end
    language "sr" do
      sha256 "a40783c37b7b9257ed2752f5c96022119c211d91676316237897012dd368d81b"
      "sr"
    end
    language "ss" do
      sha256 "2bb68e158ba3ac8d4251ae4063dc362da590cb17ed65c7d524e4ed91186059e3"
      "ss"
    end
    language "st" do
      sha256 "f0c34d8567603b8dad140ceb2f1549ef2edb47cad16605a0adbb617309b2953e"
      "st"
    end
    language "sv" do
      sha256 "9d61e91ed4c4fa42ba1a7e1f1cba36745d6c2823488722db2349b2dd7c710d00"
      "sv"
    end
    language "sw-TZ" do
      sha256 "bb8965a7f3d1da63bbdd0294873b0321729f9605c70ac771803249112d95cce2"
      "sw-TZ"
    end
    language "ta" do
      sha256 "cfbc8cde6850ff99474433baec3b6a3c6e9fcfda566ac2b18bf77cdeb76bc505"
      "ta"
    end
    language "te" do
      sha256 "f2d071ca494ad0b9e3a670b8cd711eed534541eb075c0062cc9553c08ae4b85e"
      "te"
    end
    language "tg" do
      sha256 "6dbdf0876d0c85d7e575902181bc9028313c89112f327d7e9061379455c979d1"
      "tg"
    end
    language "th" do
      sha256 "ca0648b9c6aa935bd961bb804057c255a695c0e186fa814f1e06ced557c50aeb"
      "th"
    end
    language "tn" do
      sha256 "eadd23ceaef94e769289973fdb5d95f1d67dfbe8ceeb9d723f9a2a40476b97e4"
      "tn"
    end
    language "tr" do
      sha256 "4f696876e6167bead0d5957bb75c92e29ccb24762f118da49f6d734584869390"
      "tr"
    end
    language "ts" do
      sha256 "c56fdf9157f6bfa1d6c49f60d2be24e31335a1c1c12340b08f2a8dc153e5fe17"
      "ts"
    end
    language "tt" do
      sha256 "5d9f2191cf23aa1784100c29ea7c15841f8e1b68f44ade9b3b1902a3e77cf330"
      "tt"
    end
    language "ug" do
      sha256 "5d45480130d48b262e88dbed1bb986bf302467acf42fe6c54d15a2fc35b0c719"
      "ug"
    end
    language "uk" do
      sha256 "96bf3e2ddaf40a065f4251c6c43bf6bbc5ba1c2ab8f495196f79c733216cea3d"
      "uk"
    end
    language "uz" do
      sha256 "32f0116ed4d6c9fde832b3e369790602ae43b686ee9d11598dc800d94936847d"
      "uz"
    end
    language "ve" do
      sha256 "f2167b305f0923114752afb850502a29492433ff587f4f2f176b9b247e05a170"
      "ve"
    end
    language "vi" do
      sha256 "1ae851827e50bdf488fa80daf7be1e4111431d52f1e0e8ccb952a8ade239f01f"
      "vi"
    end
    language "xh" do
      sha256 "105ed5a50c772d325df080898bc28e15c214d550a9f1a961f5b710413fbc2469"
      "xh"
    end
    language "zh-CN" do
      sha256 "74679eb42c808fc561cb45440bd4bb40adfabadc81dd6c6d3784db9b8553367b"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "675cda6d4a379648056fc4ee504a3358ca1f3b70469c8f20b479472dddfa630f"
      "zh-TW"
    end
    language "zu" do
      sha256 "ebb90adc145f6625b9368a1c89ed06b2fb6f02f3340e4095787a3303cd2210b9"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "b951c1b7ca1962d46a347b804a231d329831f732e9f87faa3c929e939f79045a"
      "af"
    end
    language "am" do
      sha256 "90818736dce289021555f4ff0a68787df16162b013ddf50beba1a8eedce91102"
      "am"
    end
    language "ar" do
      sha256 "eb441a673dad7e008c9102ea645b0f63867d5dacac65e10c5c4724453078ac52"
      "ar"
    end
    language "as" do
      sha256 "372963d64a852c8f5f3a169cf5deccb1c42ea35a613e3ff9f0e8fcb76ef1f979"
      "as"
    end
    language "be" do
      sha256 "c047646a851e2c4fb966c922098318cf965e35ad0a6e17763b0c97d6536ca0d2"
      "be"
    end
    language "bg" do
      sha256 "b8f3770d3d3cb179cfa8e7762830ddda63b9776092e650b5a09df048a2820760"
      "bg"
    end
    language "bn-IN" do
      sha256 "65816a207f4e3f0a7c326cf07bb2b35cbc676cee62687af51b9ecd52d5ebb04d"
      "bn-IN"
    end
    language "bn" do
      sha256 "111582f029f30b1ac4bb2d67839d9f90ea182dbd54d772f365cb54abbeae7063"
      "bn"
    end
    language "bo" do
      sha256 "2f55e627d9e00c53dc24e10bcdaa6bfa17d8033000d6648f57becb3b16ba1e95"
      "bo"
    end
    language "br" do
      sha256 "ac43f82dd68913f5df7ac99f568583e458042eb50a468cf90f455708bbeaed29"
      "br"
    end
    language "bs" do
      sha256 "a294f973271347b380adbc0643544e4824492e3fb9a570a2c199cc4cacc92bae"
      "bs"
    end
    language "ca" do
      sha256 "da7786c88eee021f31dc278c5e5ec671144fb7cfee62b579eae3b2003cf1a9d1"
      "ca"
    end
    language "cs" do
      sha256 "210b38051246b618b21246dd586fcd5f12f8445168963b0ceee13354bb16f168"
      "cs"
    end
    language "cy" do
      sha256 "be532e42b1f977f1de4dd84c1816e469a4c27cced5f4034dee9e4732afd2a8b7"
      "cy"
    end
    language "da" do
      sha256 "6c653be05e92046e62eac81d721acca4ac151ab35cf086606add25793d3ae8db"
      "da"
    end
    language "de" do
      sha256 "487cfd44caef8980a4ad13cc6a2d2cb4b5557d2605c1c35381b63be2db664279"
      "de"
    end
    language "dz" do
      sha256 "eae5aff88e89f40a04592c5cbb16801fac75e8ba97c07aa52305d857738d578e"
      "dz"
    end
    language "el" do
      sha256 "74694a174af9aba662534e2d303f7c28e7f8879f8d0550aed15347e766bf6888"
      "el"
    end
    language "en-GB", default: true do
      sha256 "784281c770c7a5e4bca2967d5794d5a7c9de3bdda998cd4fb443e9c12db1bace"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "b7bfb5ec3795055ab50e1759d4f5c41ea90b28aaf0a5e41a31f702af20730686"
      "en-ZA"
    end
    language "eo" do
      sha256 "11cffcee150e718246d1bc7944b578812bb9ecdc17742a15567c4758c4ee52fd"
      "eo"
    end
    language "es" do
      sha256 "7ac17c565142320c8c36dcc6f2352749a634fe1bef7b54a108219f8a68a0e34f"
      "es"
    end
    language "et" do
      sha256 "5577367ebb3f6503d861f7eeccab1230a124c46254ffdde6e405dd6160607d3f"
      "et"
    end
    language "eu" do
      sha256 "4528880e89b23a25ae5a5c7b405f87e6ea3cae11b4be02077e7bb4ef8a6a86ca"
      "eu"
    end
    language "fa" do
      sha256 "354802215300365321ad47f06d5bcbb22c9d6c98423584d3a034d4b7dbad1c69"
      "fa"
    end
    language "fi" do
      sha256 "9951b8bc6a5544cdf7456aa3d86fb540f3736194efe5da1c6aeaede6212b1bb6"
      "fi"
    end
    language "fr" do
      sha256 "1475dfe2f22517670554742469dbce069db620f88175ac0febf77e7f63302b26"
      "fr"
    end
    language "fy" do
      sha256 "86758f9c7b4ca12d26772348f58bcdd7770fd514f9091c8f183e8fe120d3ff3c"
      "fy"
    end
    language "ga" do
      sha256 "f5b9ee1112043624ad756b2d37d502d22cbac7e972faec714769acf0ad62f50d"
      "ga"
    end
    language "gd" do
      sha256 "db4bb7dd9977381161521e72ac07e74726c3c673b097c9d962d80ca84560df98"
      "gd"
    end
    language "gl" do
      sha256 "f14275af6fdcd9cc1d7bfdfce8d3a6000ce4ace74970945b23c4eb3e6767fb40"
      "gl"
    end
    language "gu" do
      sha256 "eea7771e9a708e650e976e38a2243e1fb690000862778af729c50ee2aabf9c42"
      "gu"
    end
    language "he" do
      sha256 "3cc95c4a20ef9a964296a7ead9683e2daa4eb969709924c150719a308279b794"
      "he"
    end
    language "hi" do
      sha256 "fb063305ca44c199252f8ac333703ee25db895cee210f17ef62ce5030e528839"
      "hi"
    end
    language "hr" do
      sha256 "0a2f99f829d09ee19cd6026dd0e46b0e74a9d745a1022a1a9269d376776cd195"
      "hr"
    end
    language "hu" do
      sha256 "aaa70fd58a503ca6aea233039f30e4a170066efeab6293615d57dbb80ce6b9d7"
      "hu"
    end
    language "id" do
      sha256 "6845a39e39589a96bd23d3f51609412fa666103c35f5022d78f6b9f7c65f872f"
      "id"
    end
    language "is" do
      sha256 "050728944dd00b590e4993ae48302294c3c450449f7eba76bfb21dde00d13906"
      "is"
    end
    language "it" do
      sha256 "36378296eb07824a3ee7824b88f928e82ecf91ddeb7b4f775ff3312bd6397877"
      "it"
    end
    language "ja" do
      sha256 "bcc9b5b2e259ff27c3099258deb3f343d0c3c36f7a9b912068678decc13ceae4"
      "ja"
    end
    language "ka" do
      sha256 "70dab003efd32806a002f5db804ff2bf2f04491e6dd19fd5982b96c3cdfb8a3c"
      "ka"
    end
    language "kk" do
      sha256 "1903ccca374393d5bd670657fc0188f4315bd2c70b925066bab046d875eea156"
      "kk"
    end
    language "km" do
      sha256 "38da7d54f04cc879a30f9b66b4f9db6c586c2adfb37d00166216ffd3e334c514"
      "km"
    end
    language "kn" do
      sha256 "43214d580d4014b6d22cfa805c71d7e9ab85caa50fd508df7f2315475d99dd5a"
      "kn"
    end
    language "ko" do
      sha256 "26399df3a0a8a8030f0632f4fd39b77d3a8e856caaee686b9d000c838c56d8a4"
      "ko"
    end
    language "ks" do
      sha256 "b14a5b2e581fe26385718dd96cc989d35eece7fcb9c603ff9632dd634dab484d"
      "ks"
    end
    language "lb" do
      sha256 "8afa81717af625cc350f0101ab84ec7ce4208d4fcbb1cd9e4720ebc346eca3f2"
      "lb"
    end
    language "lo" do
      sha256 "ac57fc0c419649889c61aaf6150fed487c9c5d794dae41527d2f63e6e4a80c5a"
      "lo"
    end
    language "lt" do
      sha256 "5f295c47d02f4cc22a4583fb9c6b66a7c6adb676f9a6cdff985191c55f340011"
      "lt"
    end
    language "lv" do
      sha256 "6ad19266dae96cd5de593dde27a06f39ff46976cf974c40c5cd2ece7aa49f30d"
      "lv"
    end
    language "mk" do
      sha256 "2d9e2a513496666a39d8ffb45cea6b8257452c1895206ee06ea87857c09465f4"
      "mk"
    end
    language "ml" do
      sha256 "a406db608191a6bf07061f5c8d1bf68fda3dfc4d0c75f60a418cdb0e1b9f36d0"
      "ml"
    end
    language "mn" do
      sha256 "9be5eed74330b012e6e4302e292264c4223003a3c800027460fb918f10be92ed"
      "mn"
    end
    language "mr" do
      sha256 "72a7063dc923f2d249cbd3347f511d3bea80842984390a0d5a0b3ac0d79fe2b8"
      "mr"
    end
    language "my" do
      sha256 "bb71b0e5a6fa2603724386735d133c30f786dc6f15d5ac909f8077d13cba1f27"
      "my"
    end
    language "nb" do
      sha256 "2395fb432216e933bc6aa817c1f4aea909eb05e4fefc750d6119f41e23ed8955"
      "nb"
    end
    language "ne" do
      sha256 "184bc054203c99a2d0fe4f77e41e0576a9ae3cf8066cab09805579f3c520ba14"
      "ne"
    end
    language "nl" do
      sha256 "a944801a0057a303f58be9cdae94cf48170f55adba094c578fe5b69a7c3b20f3"
      "nl"
    end
    language "nn" do
      sha256 "aa838a88f9c123356602ae167411021aa11c26e706821c2330bf9b4d377dc915"
      "nn"
    end
    language "nr" do
      sha256 "317d686f994826b2f6b7b930b78ae450e9229b66cb75c4f853b7fdf8bfe1d9de"
      "nr"
    end
    language "oc" do
      sha256 "18930565c7ad2a48a6abbadfa99c846450e4285ef5c9220d3be4e06a80bb8cad"
      "oc"
    end
    language "om" do
      sha256 "efb3cc33d14da5691834627c35652530ae3cbc2bf9daa226d62aad18ebe98e90"
      "om"
    end
    language "or" do
      sha256 "4fa13f505e7ed362126e39a2e62f005df6b189c81e927372f4fcfa7456a03f42"
      "or"
    end
    language "pa-IN" do
      sha256 "9a0e4c2c45adbcdb142c7c264650a3af2b83266a627aa46c387a4ab52b21707f"
      "pa-IN"
    end
    language "pl" do
      sha256 "c551614f3eb93f2c51e6c5e5a9a38a877b3b8443ffef031c81f87405cdae02c4"
      "pl"
    end
    language "pt-BR" do
      sha256 "aa7b283b2d976068dac4ccea1184b60f3d3095ebd397af878ff2660362bb5ff6"
      "pt-BR"
    end
    language "pt" do
      sha256 "345ef3a401be0113c4dbfa2d70d05d2ae021e5c1fbb680b315e751d1fbe1b8b0"
      "pt"
    end
    language "ro" do
      sha256 "ee635ad241bf0b48d3170707c00bf4263f5537e9ab2fbef165ea95935ae393f5"
      "ro"
    end
    language "ru" do
      sha256 "78e583b1e1c06c0131a6f17494413647974f75ed0e38ec7b7c269e8c19e61348"
      "ru"
    end
    language "rw" do
      sha256 "6ddc1cb76b5c7d81822c7efa7a51bfa73ae40e3b51e2795bc1ca758cae7511a2"
      "rw"
    end
    language "sa-IN" do
      sha256 "5039db93424823fa03eb01618bc234a5aa0ee9e9dd3db3d42e870e04fc826148"
      "sa-IN"
    end
    language "sd" do
      sha256 "81a927b5954b1db8f34d3e6bb832a4ee92d1c56f5c8dd345222ae8f7af5e824b"
      "sd"
    end
    language "si" do
      sha256 "491e2932495510b2cfd12650bfa68f8b45a93273fc63c9b5893876d48d53e575"
      "si"
    end
    language "sk" do
      sha256 "5a9aaf4667283a98119ef6d148edab1597b635adbb4e406b4b9dd30d37e2cd81"
      "sk"
    end
    language "sl" do
      sha256 "6e891d2c28cc4c4087defd1be2fb93329024a185ed162b194515d1005bb8c693"
      "sl"
    end
    language "sq" do
      sha256 "49a2f0e14081bbbc0a5b983a2aa72ab4683e4d2c719fd463b798be712f31f955"
      "sq"
    end
    language "sr" do
      sha256 "d79f2aab79a9635b6c14fc604be4749a1921c8ebdda088db960fcc8ca53ee79e"
      "sr"
    end
    language "ss" do
      sha256 "a916567fdf7d4a42f6e1ed9c64bdfe13d582b72ec7320e6d8479366c316a89a8"
      "ss"
    end
    language "st" do
      sha256 "7271440dd8b53fd0e07f814a3258c1740f38b4beecac8ed6333c9e93dbcfd080"
      "st"
    end
    language "sv" do
      sha256 "fdfd2f5149c1dfed5c0bb24a4b8b07f7bf9de302a629c0fc9f965869abd2d5b6"
      "sv"
    end
    language "sw-TZ" do
      sha256 "ee72f40859f20342d79be951aa4a26403569784b983e5a3b9d3dc8e10e5c02d1"
      "sw-TZ"
    end
    language "ta" do
      sha256 "24bb941f87746ffdb97c0042680a27baff05a684ed88cee66fe0219d6a99435b"
      "ta"
    end
    language "te" do
      sha256 "50e0dc1b3ecd340cae010e668c8c2db5b0a040566ba42047ec5180c13e3d1762"
      "te"
    end
    language "tg" do
      sha256 "ed5b01ef33426630b709c59c448bad4e2c81a5e7409fa53c9d189ac15313b724"
      "tg"
    end
    language "th" do
      sha256 "172853e1b465d07beb26172a2fbf58f6a1470805d80086f78eb6bea20409be6f"
      "th"
    end
    language "tn" do
      sha256 "8ad1c2d7d5b7f48c3146a9d95a0e7153fc18d43cfe3377c4c19b44608b753c03"
      "tn"
    end
    language "tr" do
      sha256 "76e64ca4060b4391c8d9b96d162280c19f069e34b0895cbf377ee033c8a3ef30"
      "tr"
    end
    language "ts" do
      sha256 "8a2499b0626bf3c041e2f94d7bdeeaaceae5d4d3c80150e04a217353328857f6"
      "ts"
    end
    language "tt" do
      sha256 "0ecf7778acd3a32cdee8736894d6534b7bc983295b8d56627c414e98192e60cc"
      "tt"
    end
    language "ug" do
      sha256 "f0ed6d455787dd6f9590be4bd87101cd6eef417f500943dce43ce910c033f11d"
      "ug"
    end
    language "uk" do
      sha256 "f932419c21b41caf90f19e58d5101b6f0ad4a4941c87c3f366896b323e1b8e5a"
      "uk"
    end
    language "uz" do
      sha256 "9db8a8b7c24d0e8b467512d8c8ecbb5d67f1b5baee68164331ebacc261e002eb"
      "uz"
    end
    language "ve" do
      sha256 "00ffd42edba436822ce38ad1c2b8b76c36d9fe197d99e325ae5fbdd69822a4e5"
      "ve"
    end
    language "vi" do
      sha256 "ff7dfc9d7345495530b39588de035fa42b8a365a430cae808342376ea108b8ba"
      "vi"
    end
    language "xh" do
      sha256 "a9d4046241220015a6654cd1d7c8352d07e4171bb76d5506ec6302ab2537a70c"
      "xh"
    end
    language "zh-CN" do
      sha256 "a789300e64521382c3353ec34d6f82c46c8836e5f00c4adae051eed145f82cf4"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "f2bfa9c2f10072f24b8ab7e833bda9cb158273d7770620a0261e65abcf891f4b"
      "zh-TW"
    end
    language "zu" do
      sha256 "42ada31250d1d09f9c47b44fec711151bc68a4969d96ca3038a1b7b2a0f07ca1"
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
  depends_on macos: ">= :sierra"

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
