cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.5.9"

  on_arm do
    language "af" do
      sha256 "4e2ca2f79bf4428c0f192cb91f4d9fb18280171166c0643ab59a9c757f7cf2bf"
      "af"
    end
    language "am" do
      sha256 "b30987af71f7655ca6eff1c2a73537fa47e65b10e3a3ca0a87db9e48b5592cc9"
      "am"
    end
    language "ar" do
      sha256 "4bde97661cd5842019d582153dda310ebc358109d52feb6b97f27047e0ec101a"
      "ar"
    end
    language "as" do
      sha256 "c591a9d6ebca8124e31aa8a0536e030a6ca7f8e1ffb1e5aec42a17d43cf7ad9a"
      "as"
    end
    language "be" do
      sha256 "438aee9585ab70d5ea9f78309b39263b42a75f95d0dc296db9f788e3acaca3fe"
      "be"
    end
    language "bg" do
      sha256 "74bd359fec02b660cce4eca7ae5044af168c091ca809d68feb688149120620ec"
      "bg"
    end
    language "bn-IN" do
      sha256 "c1499d8a78c7cbd9830b12cdad243533b1663625ade1e8cb2a99d8dc566bb78e"
      "bn-IN"
    end
    language "bn" do
      sha256 "89b7233237b8d44e5cf70b40af7b4cbc213aaea471447ffa7bb4b29064b55f79"
      "bn"
    end
    language "bo" do
      sha256 "8042b5d799701f71485a72c4062165b9c457941bb35fd7417ac99c10cb70c4b8"
      "bo"
    end
    language "br" do
      sha256 "6bafb8157f6f16fd16d238086bfca6738cb1db8aa0c410c92f388a73682c82e7"
      "br"
    end
    language "bs" do
      sha256 "ef8a682da594c1ce0005822932facf71bd117d6347a84daef3ac5de138ec52ae"
      "bs"
    end
    language "ca" do
      sha256 "72c0a1431673d7b71307de423113bdb3d9773f6a640e42e2e518db62668048d3"
      "ca"
    end
    language "cs" do
      sha256 "fb1c2fb9f10727ceaba570108bc83d3b9878e7b77618972ed1e5a7638d6752df"
      "cs"
    end
    language "cy" do
      sha256 "67900e6f0e7883669b8f9d419273f6c0099e5a5d3748c29df48b0eff31f4281f"
      "cy"
    end
    language "da" do
      sha256 "4f71e58c1bd514e56c3d339df43fe2f7bcfb4f94f7ce6761681d19d0ad68abfb"
      "da"
    end
    language "de" do
      sha256 "a2a4bf6dad1fd7bd0049093c218e2a30692082d210c4b8c7e51a9d2d35cec7ee"
      "de"
    end
    language "dz" do
      sha256 "beb5e86281b859141bae531d9eee54c833a19be8c0e90702399dadcee3912275"
      "dz"
    end
    language "el" do
      sha256 "5fe59f84f93a0bb9fefbab511b8418c8a3c088a8ce0f54be8c0c399c482e389a"
      "el"
    end
    language "en-GB", default: true do
      sha256 "2fad3a0885db2513006344efeaba884b8ce6f97419b852132d73591911cf1ece"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "70d6bb703b604adc500d7c2333ae8ad2140937bf98e682f1f7b34096449dc34f"
      "en-ZA"
    end
    language "eo" do
      sha256 "c6ea23866085b86446f0802d7d45df74aa59548028ad20e02854ffc72acec065"
      "eo"
    end
    language "es" do
      sha256 "13df0f0e694f18894c955edf915080113f6031abe813e71d2f0e833d5da0476a"
      "es"
    end
    language "et" do
      sha256 "798af81d328e0ca66ffbb0b6493002f494ec678b5f7109af3bb2d56eaf7d5ab0"
      "et"
    end
    language "eu" do
      sha256 "0b9930b1a43d490f99847ab921483834077c3d52d7ee55a0ffc30a5a51307c10"
      "eu"
    end
    language "fa" do
      sha256 "3ed79a7af61e6484d9aee951f1e5180ff8651f0728ba145108e6fe7b801f1fab"
      "fa"
    end
    language "fi" do
      sha256 "b899458e473e3c5e678dfd6e281b4f185527c2dbfa4543c6b96b9c482ca29631"
      "fi"
    end
    language "fr" do
      sha256 "9cb75c3bb8fcb027e87a4b71a4cff8a7c9546c1483ad85599d1818c8ca442c0e"
      "fr"
    end
    language "fy" do
      sha256 "236aa9a1a2c3cc72b6e79c74a019356dc895586f4b7931229f3bae7f8449c483"
      "fy"
    end
    language "ga" do
      sha256 "2a201d58af3fb887c48ca3bc666e330b6980fbf2785fc46a50faddfa60f49f54"
      "ga"
    end
    language "gd" do
      sha256 "c8c35ce4edba9dfd0b51dd0d2ac8611be12e0ebcba904405e5c9e3ee336f2f07"
      "gd"
    end
    language "gl" do
      sha256 "48fac1b7698c641dd4e3d7655520a35a7414abee1a6a9f2912f0b278c5894e5a"
      "gl"
    end
    language "gu" do
      sha256 "0500ef325fc2f9e3a1f2b31b840f9cca3b957a411c0b9d74a802b02db9f06539"
      "gu"
    end
    language "he" do
      sha256 "ad20368b0743e1aeee6eb134657074f46e257833f8966ae0ff04d86fcf7927cf"
      "he"
    end
    language "hi" do
      sha256 "a51312cf2f10e9354efe4460f50d69baf2047c27a37b826ea4e5af83c5e87671"
      "hi"
    end
    language "hr" do
      sha256 "d6a8dfa32d2d299732ae6b5b4c2febfaa01032aa8b5aca24ea1e20901d313c39"
      "hr"
    end
    language "hu" do
      sha256 "e9e4f1a48ddd706c38f9ee8e59629dfa85854a24a7dfea7b7104f95018e9a9d0"
      "hu"
    end
    language "id" do
      sha256 "b79a5ea5aa366a885f13ae4496eb942a56e1d7c236ec2e7b61048d4a1464b7c8"
      "id"
    end
    language "is" do
      sha256 "09757bc652de81ca3b334709b01db8fe3ec0d379a47f915289cc6feda2c7411f"
      "is"
    end
    language "it" do
      sha256 "d4589dd380616d8f51538ffbfa99fdb70ba1beb2f0fa561448e842a2768f358d"
      "it"
    end
    language "ja" do
      sha256 "9f715d42fd7c3cd0b6c914c60113594a6add0c11bb72aa629f93a3445dc5525d"
      "ja"
    end
    language "ka" do
      sha256 "ae65505cfd3577e3bb8bb462694c759eebfb1c7710236bef5f9685b0c68008f5"
      "ka"
    end
    language "kk" do
      sha256 "1c49d27139520317d9230642ce848d92a946963da8a5b3f1cbe96f5c9ad044f9"
      "kk"
    end
    language "km" do
      sha256 "24f80ba4298a66a6bec9a0cea87e433fe5454ca0bc21985c04d42ab92d867b53"
      "km"
    end
    language "kn" do
      sha256 "bc1afa3630cebc494f48e140abd446e5c99e72420e5826af7fe86367a93127b8"
      "kn"
    end
    language "ko" do
      sha256 "30413bff50ffb5125e168dea705a3ebe1307f1631f3e46e9f5bdc6d643d7fb46"
      "ko"
    end
    language "ks" do
      sha256 "2110fbecd87838e74b8e46d5e056a2d2c9a0b380237852971d336d696b42aeed"
      "ks"
    end
    language "lb" do
      sha256 "5d84af923c6e3feacefe431b5b68099161cded1dbe352bc6b9ea1bf2fafd802f"
      "lb"
    end
    language "lo" do
      sha256 "14aad98de24b4c22035fea1d4692c11b6c6e559aae1f2df2a9e4be516ae8d4ed"
      "lo"
    end
    language "lt" do
      sha256 "7741372a91abafc3d437f00a489e708061125710618fd4e6eeed679ba71fd2db"
      "lt"
    end
    language "lv" do
      sha256 "46208042188c8d04417fc778f7b51cb98603ffcb6ad0e5920cfd5b25ca4133e6"
      "lv"
    end
    language "mk" do
      sha256 "afcc9c1ece7edc48f4c33ed7847ea961d52d22b8b0677be7f81defb495f157f4"
      "mk"
    end
    language "ml" do
      sha256 "3961b0a4750e2f9d0f32db34aea5450db93635bc4020311e02f66ab340bdca95"
      "ml"
    end
    language "mn" do
      sha256 "837fbd48f658586ade30ce0056160a4727353dff5e0d2872101257b62a2c0806"
      "mn"
    end
    language "mr" do
      sha256 "a737a0458ae38d7fbd546483b90b9c9320625b86be95c2befc4ffc887ce529ca"
      "mr"
    end
    language "my" do
      sha256 "9cf2aa549024755e24eb8b549a4c222e609fcff7484318edc783be78572e1592"
      "my"
    end
    language "nb" do
      sha256 "48e9860d15237bbc08b3fc5994a41a935ff267da07d5e7658776bf942cf81a3b"
      "nb"
    end
    language "ne" do
      sha256 "788a1585bbf5f825c2ad024fc2ff26e3e1c71129a3a0f6067b15129c1662d2e6"
      "ne"
    end
    language "nl" do
      sha256 "44c1957c21f1ed74ea9f80cd0f66c7901b9580cff330dfe2ab9f9b1022c2953e"
      "nl"
    end
    language "nn" do
      sha256 "3c00fa46f5fb13d2dcaea7bf025635372a2383852c5f88477852a74eff319805"
      "nn"
    end
    language "nr" do
      sha256 "4c27f549539d6617ec1fc45f708c9e09671c8aabe5c3d7e443a7923f92efb1c6"
      "nr"
    end
    language "oc" do
      sha256 "9beda269b94778efbcade4f2f3c30f3a64f5f79725df6951103e1184c64fb500"
      "oc"
    end
    language "om" do
      sha256 "36ee86557edb1eaa7adc54642d87d8e82b09ce7dbbc4d99c39f47a3b0bd786d0"
      "om"
    end
    language "or" do
      sha256 "7721d82dfe9e51e8af37cfec1ff1f0b141836cb4407dbcb59abc8b0b8afe636e"
      "or"
    end
    language "pa-IN" do
      sha256 "f0c94aeb968225bb0a71626defd097dcc336439c43b2f666a8cb44c71c575d33"
      "pa-IN"
    end
    language "pl" do
      sha256 "8d10191ac31ca698b1304cd4e74648da1f04c327d67ffd60657c377d7a450678"
      "pl"
    end
    language "pt-BR" do
      sha256 "9cfbf6ef17039d46d36762ccc6d048528ccadbc49f9e50b00c32f8a4b634447a"
      "pt-BR"
    end
    language "pt" do
      sha256 "6895c644b10588fcd3c4802677dcf29f087a510a3a9a9878224787f157e6a95d"
      "pt"
    end
    language "ro" do
      sha256 "581918c2a96b817114092f45da261962c2e4d93adb97a8cff7d9c2ab3168b1af"
      "ro"
    end
    language "ru" do
      sha256 "213a575c03b0a8f860d323ee3524e648321fa6a901e278600eae121a5e516059"
      "ru"
    end
    language "rw" do
      sha256 "79614f0531426c1c2c83b0da8424073a08860f7493ac229ff75fc36837988c33"
      "rw"
    end
    language "sa-IN" do
      sha256 "ec37ab767fd27520ca712e1364eb78d751d103e5fc14fb2ff8ae151476dcf326"
      "sa-IN"
    end
    language "sd" do
      sha256 "574a41a2ede236802c003f8429769826aa4fa7a393028a30ee620f00d0910468"
      "sd"
    end
    language "si" do
      sha256 "123672a4988e70727ddf8985cfbc35d7f5c9bdad92783419f1a4dbd03dbb5978"
      "si"
    end
    language "sk" do
      sha256 "515eea6b49cf76841f59ce20216457c05f69f75e485e396a7c14a8a459c97d89"
      "sk"
    end
    language "sl" do
      sha256 "6968f5a8a8a25a8af74df9a07d79477c683769e9e2c1a9194bdadd7cadcf23b7"
      "sl"
    end
    language "sq" do
      sha256 "356e2f3ebb2fa61d6a248303a75fc961efc093309dac3f1f7c2dea9fda94068f"
      "sq"
    end
    language "sr" do
      sha256 "93e434bbd50c60360b0e2ba7aa49e4bc68f630fbae51f6a1aa785e832d6af96f"
      "sr"
    end
    language "ss" do
      sha256 "9d09d8e2c110c0642be7d444b2b3d48e06e132358ce1b1c0bbae031b31c7b4e6"
      "ss"
    end
    language "st" do
      sha256 "b043cc5209c1cd9617d08ba04692399c79fa58f4f3a2d84018ac12663a782ae7"
      "st"
    end
    language "sv" do
      sha256 "9e0bb04ad1901d04f341f135c682f2c4f1d66ee45d038f3b8eefedafa59acfea"
      "sv"
    end
    language "sw-TZ" do
      sha256 "0ee4c26da5ddd820f5122b44c15eb05ff9eedc88db19434ca1540ba9a82d50a6"
      "sw-TZ"
    end
    language "ta" do
      sha256 "790fe775aa6881b089bab271c44e424f56391b77ef4a1bbaae1a0f10b0686c14"
      "ta"
    end
    language "te" do
      sha256 "0a2d927916f6bce7824880010c494874ae7e0bb9ebfbf2d30b17a1072e891b66"
      "te"
    end
    language "tg" do
      sha256 "8b048a4b14338d9806cc603c437ba6c74bafb22d0e31ba3661a5d42d88d9ba05"
      "tg"
    end
    language "th" do
      sha256 "01efad0b93788a1db7ec9328436543f2862167ac2df2049bec8b62b4cb5d2720"
      "th"
    end
    language "tn" do
      sha256 "7a6b132d1b66c6b983d11adacb0e5441819d9757e29f29a6548efb0d69a4feed"
      "tn"
    end
    language "tr" do
      sha256 "5b572770e05271f84b3b6e0e0e7a736afcf64d664d9715ad5f4e5e109c7f77f8"
      "tr"
    end
    language "ts" do
      sha256 "1e5bdd15301b635dafe75a865946ae4a1fa7de916efd9774a7de3767cd39a96c"
      "ts"
    end
    language "tt" do
      sha256 "d819523c9a6ec3df3722f07d847be2c44c39abe408a4ac82bcafe49f283f4fe4"
      "tt"
    end
    language "ug" do
      sha256 "b1e5623b5906242d833062e8f94164117fe9623ca96a39f37ea4c537a8ec101e"
      "ug"
    end
    language "uk" do
      sha256 "3908ade1e20b566a1ca7efb36fb31aca6a66ccb8ed6a6f6bcf39df3982dcfc1c"
      "uk"
    end
    language "uz" do
      sha256 "de293bde950b3dbbf2a455a0c2606df8de0667e9d7e01d087a9254cfa7b3bba6"
      "uz"
    end
    language "ve" do
      sha256 "a10435928d39461df946f831ae280516946db8d571372a1b54ce0805ea9b564e"
      "ve"
    end
    language "vi" do
      sha256 "4f5bc3dc29c9b301192376d7b34b664411a6e2f58ba91cb9aab35b34dfbcf699"
      "vi"
    end
    language "xh" do
      sha256 "f7950ac9aa7883c79c4e8f3652c53587860a5543e24da1691b87c23fe886ece5"
      "xh"
    end
    language "zh-CN" do
      sha256 "6e35b5fa5f21c4803f63e8b8d57d4d3dc9f61fb2f8acecd576e26882ff83063d"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "386c2a065be29a39c8377d182b955a11848b24d7b04fa5915e1f4e90b5805036"
      "zh-TW"
    end
    language "zu" do
      sha256 "c3952a4a5ff45c1da4e5840a64f08c5a317e215ea79937d0daa8f3c7775910ab"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "0680a1809c7f76fc3e63959c758870f93c704351594e7be48a0006fbedfe1791"
      "af"
    end
    language "am" do
      sha256 "a283d88970bf6c1e7a5c9d6ad61c49d1358657381933b38c9f576b94b5f3a783"
      "am"
    end
    language "ar" do
      sha256 "1ee209df9c131990f4c139ced012a7e268e74ee498bd8f4ad2055fe28ebb904e"
      "ar"
    end
    language "as" do
      sha256 "6444a06ec81987365648e429500ee38cc73e86c52a3dcbfd70f4ae49c5cb9360"
      "as"
    end
    language "be" do
      sha256 "04905da059c25b31b88bf3b74cccd8caa5949a35a528dfc733dc1860263daf94"
      "be"
    end
    language "bg" do
      sha256 "f3f09599a3710f842366848fc2d4aef6b7d87750f1dafdd0459621e8af567555"
      "bg"
    end
    language "bn-IN" do
      sha256 "0a8d8886c62967dae2a5e80853f77af00ef665fd2a04efea64c20811832cd18c"
      "bn-IN"
    end
    language "bn" do
      sha256 "8c198498ec7318779bd8de75833bf11d99c4159f2a370532de0c5b01118a41e6"
      "bn"
    end
    language "bo" do
      sha256 "0dd0a62dc1eb7bab794ae1fa23a4ed1b9774b129339bc259c8150a2f8c709861"
      "bo"
    end
    language "br" do
      sha256 "00428844635747e9dfa20a553905266c12159163fec58ce97dfd845af6764236"
      "br"
    end
    language "bs" do
      sha256 "20fec38343252721315136cd755720b81fa09660df9e72109a18c0443bf9db40"
      "bs"
    end
    language "ca" do
      sha256 "dd69facf82c3e3f1d392d324dd7fbed32a3332e2857e169ae312fae608b8266b"
      "ca"
    end
    language "cs" do
      sha256 "8a0437cd8f61dd908a66003df9c3732e1e96df55520084d589df354a22a24053"
      "cs"
    end
    language "cy" do
      sha256 "a96d543eca88d304168c7dd02b436be5c5395b38a6eade6d9f48acd75ab3003b"
      "cy"
    end
    language "da" do
      sha256 "5eac4be76e1714a07a19a13975cc0867654c5d0e9b9fe12412efafa5a1d70a4b"
      "da"
    end
    language "de" do
      sha256 "3375a09be996eb5fe252358ca5d44339711f93f5627918eae9442b172fe708a4"
      "de"
    end
    language "dz" do
      sha256 "d764a96927eb5b81067fc799d602478dec9a02a9c6cb7a7a7c472b01b6460b18"
      "dz"
    end
    language "el" do
      sha256 "87f39d4d166d0409c88c5bd8d89adfaf58bc5a43765e626ed00f5683860f4c56"
      "el"
    end
    language "en-GB", default: true do
      sha256 "e4dbdf1b3bb8444c3a789fb7c5d617ac3bb409f5fa6809b820746753372f86b1"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "b1bf3bf8e417585b1865bbe720f62b1f9cd4591b436a3e4c495403a59b4e5aba"
      "en-ZA"
    end
    language "eo" do
      sha256 "ebb7578bc3b6ce5d4992bf37e64a2a09f901e9feb5448ec091d33a5a83137973"
      "eo"
    end
    language "es" do
      sha256 "309882d9a683c89bcae0945aefb728b67005aba74a82d2e41211fc7f08dbaf98"
      "es"
    end
    language "et" do
      sha256 "a8dbbca0e892fa64b2f980e35139e8ec78e6298529cdda6d80a5d2fc009a4544"
      "et"
    end
    language "eu" do
      sha256 "00c27759c8e263fe692f5d7d68b1a9932fd1a5f8b1824587219b17d5f90c805d"
      "eu"
    end
    language "fa" do
      sha256 "c43661bdba24dbee0e989fdba42efd767b0fd52d701ce85295f9d22df708b23d"
      "fa"
    end
    language "fi" do
      sha256 "496baba1f02e2107e490253190d56175d732c0994074b830b0f33b647ed47c66"
      "fi"
    end
    language "fr" do
      sha256 "a3ad9eddad69e6bc869013db9a0ff98e6ef6701067d4fe2ccdc6790919ff0058"
      "fr"
    end
    language "fy" do
      sha256 "0331858d2f83f0354f8a7d2973b80972941a0bd0fce62ade78cd0a58c80343fc"
      "fy"
    end
    language "ga" do
      sha256 "926bd5f9f1ae3badbc4537ecef8630397aff33d851f375aaa2451c31cb2a651a"
      "ga"
    end
    language "gd" do
      sha256 "e0f91a28d6c67d21ab47ff122ade98fa394b6ac3093ef8ecd7dd91bfa0d0ecff"
      "gd"
    end
    language "gl" do
      sha256 "c6d474b18d9f4eb5fdb0deaa045d1e56ba1795d01f7d0c0a4c95cb848f5e5403"
      "gl"
    end
    language "gu" do
      sha256 "ee7474dc80c9976ff27ab182950fdf2569e5665d4913a0d978e4baaabeebce8b"
      "gu"
    end
    language "he" do
      sha256 "576c9c39c64e309a08c2b4f01ba9cc8f7b70663cad78ed1adfc70831d6da0c02"
      "he"
    end
    language "hi" do
      sha256 "ff3745d65d2e5d0169e1793ff2c7189f2ef2e2f4a0810dcc4d783ba9723177a0"
      "hi"
    end
    language "hr" do
      sha256 "d1d1d772c344125376da3d0c129ce857feaa13c786b5b56d6c0a2dbab589231e"
      "hr"
    end
    language "hu" do
      sha256 "8d903bee8b9f0b7fd4b0e4dc955b208f5cb987c8e57f1e0a2183f168d4710823"
      "hu"
    end
    language "id" do
      sha256 "3de2b7db1c005bc3d885ebfb086b1119f4b170ba6cea799da449d698da7813b5"
      "id"
    end
    language "is" do
      sha256 "be6be0c6efd3707c00858355ec23a797fe3d66c775263249bec3566da488a972"
      "is"
    end
    language "it" do
      sha256 "e4ccc33afb31d19cad7874a88e9c36d7c21bf72586c3322e04990084f84e3684"
      "it"
    end
    language "ja" do
      sha256 "0c63e4c4b96caafbb0e717bd6a115585864bd64db9609acd828409725c009abb"
      "ja"
    end
    language "ka" do
      sha256 "8931ee99260ffec85be723973ec7e07dd0984e3b7a619a4aac01c163a412d353"
      "ka"
    end
    language "kk" do
      sha256 "961a28e34c76830f572b02e2be977080405bd459abbf64084351da5009c5969c"
      "kk"
    end
    language "km" do
      sha256 "be72e8048f3a100026c44a226b4ecf08728c6360fb6dde59cd66b894f7c9ca39"
      "km"
    end
    language "kn" do
      sha256 "0cd5023dfab5256ea7674b99ff4a8f16cc303ff79e5cd53efb08140649baec1c"
      "kn"
    end
    language "ko" do
      sha256 "300a064e3b4e701996129d977c8ccb26e02993a23a539453963702d0208a69d8"
      "ko"
    end
    language "ks" do
      sha256 "2c2ab690ecfb4357388158d552d92da9dead658b85e18f17e5f673bd426bbc87"
      "ks"
    end
    language "lb" do
      sha256 "919809c9a50fa13bc82d6b74f4d5d754aaab06b8fff112e8f5a22a58e2520e25"
      "lb"
    end
    language "lo" do
      sha256 "619e979fd299e4b99d6296f325cbb85fa43d5dbf71d4dcc6b08577a1ae5cc3e4"
      "lo"
    end
    language "lt" do
      sha256 "1aee3b79fff66d4f4d66fa7ed2ea8736f0ab2afa84097ad57ea767cfe30d5950"
      "lt"
    end
    language "lv" do
      sha256 "0216909b464938168d2f6e0220102d7bed1cd3f8c6ec5b2fe88e941b71b158aa"
      "lv"
    end
    language "mk" do
      sha256 "e9ad38cfabf6d6b78784b257fde3d78c49c8fbdf5a102545e7cca4f2378d3917"
      "mk"
    end
    language "ml" do
      sha256 "11490c5692eb4fe6d1e0453af7015053011cba48975a20f72804205eed396051"
      "ml"
    end
    language "mn" do
      sha256 "ce5b1e53cf2a517b04ab3438bc15b97094093483d6012bb8ec876b9c76ad8cea"
      "mn"
    end
    language "mr" do
      sha256 "009ea6c37f4c65d48b593023eb5fadfaed208466169dc3170c4b15bec28fa7a9"
      "mr"
    end
    language "my" do
      sha256 "a5c8c5532f90fe6828869d7e193b44044b0da66ca07520489b6adeb7e4527f4a"
      "my"
    end
    language "nb" do
      sha256 "e8bcf85f5d83e3a6ad868c15282bc9be5e59b7676f6ea05b3eff95692e919803"
      "nb"
    end
    language "ne" do
      sha256 "44150d84e9caf7f116b8ecfbd4b3611aab567b021df217d67ceb65e931cea0f0"
      "ne"
    end
    language "nl" do
      sha256 "faed449c6de5aee5f9f3c2218ac7d4390581195d610436bc0bef28bf6c0edb6e"
      "nl"
    end
    language "nn" do
      sha256 "89d80c3175e972835064147d18b2395801fb561c10313daa958ad23566ff2f30"
      "nn"
    end
    language "nr" do
      sha256 "f5b325868b9f6b3ed1a92c5e2142397de2f8862fc49c1915e6d59c3e3c8e6691"
      "nr"
    end
    language "oc" do
      sha256 "ee04abec94615cb60f484b6e47c54b49d3f296c2f42ed17e1fac94db3f6b3798"
      "oc"
    end
    language "om" do
      sha256 "b5f36df5ece3d777ef5ec92cae1f5377201315bd272a12381b501253d02cd741"
      "om"
    end
    language "or" do
      sha256 "f985eeeeeb99abadd915b0b8895fa95e863073c4ee87e1457333366d19f842be"
      "or"
    end
    language "pa-IN" do
      sha256 "723d4979c896d246972e897380b284919caf7e444516b6e5e287e497c1b29e9f"
      "pa-IN"
    end
    language "pl" do
      sha256 "f4dd3bbebf9d2bcf928ef0e9bf55b667460c2ce631dfe2000dad53b1474bd600"
      "pl"
    end
    language "pt-BR" do
      sha256 "2815986bcc8bd25ad57195d2b0e1b083775927b476b3bc9de5974d6b83acbbc8"
      "pt-BR"
    end
    language "pt" do
      sha256 "b5b878f92b478b0bbcd47b659d7b9d18aa049b468de61a6a7b4fe80daf43a068"
      "pt"
    end
    language "ro" do
      sha256 "7d677444217ef424bf7185cd1e670fb754a72515c6eaf1bcfe81adbcec4d5406"
      "ro"
    end
    language "ru" do
      sha256 "4559bdd80ddb8f2e8d8bbd57d078349f619f9064af5c3713ffbfb25241c2c3a7"
      "ru"
    end
    language "rw" do
      sha256 "5f44bc3785a1ee0b2fea6fcdc18b77c7e29e287242ae4db0efbb967f26ef8160"
      "rw"
    end
    language "sa-IN" do
      sha256 "c9dbd00d4e549bdf36d847735fcb3e8a00cbb503f7f62c9dc13c24b780a90622"
      "sa-IN"
    end
    language "sd" do
      sha256 "c633fb762ba06caecf5695cff2e81678914e753e4f862cd21d6ffb42684e2061"
      "sd"
    end
    language "si" do
      sha256 "954a8c8461fc821169f320327a2fd6d7938e31cdca55cc336e3da2cf0d24b62a"
      "si"
    end
    language "sk" do
      sha256 "f72b7bb75d426eee1504b74f8b8f40d1f4ae62b81672aa3a1472caf090df3dd0"
      "sk"
    end
    language "sl" do
      sha256 "6ad0fc2ef7b2d000c324ea488b5a46c2338c07e78afce7b6d883261d91a2f684"
      "sl"
    end
    language "sq" do
      sha256 "bfdeea6ce623503e8f20f71a8f6ea60567afb818e6966d05dd28024902f6d47e"
      "sq"
    end
    language "sr" do
      sha256 "e8944d8cb249601e288886ae1098146b78d243e2d44f0364fbbb5644915e29d2"
      "sr"
    end
    language "ss" do
      sha256 "481342659b4b204f496b0b414b7133a9c78600cc6dc51d62313168280b574cc5"
      "ss"
    end
    language "st" do
      sha256 "6d14251944b441c1c8288be4fccfa8f681b04d3b2a88dda9945fb06ec9af0a93"
      "st"
    end
    language "sv" do
      sha256 "4db32f15ba23e99a273d10a15748ca5f0b2d5eac304c2d5019d15e75cc2d6f5d"
      "sv"
    end
    language "sw-TZ" do
      sha256 "6ed47159a1f83eb2d56c09430f3a98afd1655107b25ad5982728a4e5e7173864"
      "sw-TZ"
    end
    language "ta" do
      sha256 "285cdf646ec8b7a1a05f4421356537df4aae10dcdacc42cd5404ff58dae7712b"
      "ta"
    end
    language "te" do
      sha256 "ef13b0d0d56dbea0a6da1d5e0fd80bc36af67d3cfe6672da1b895ed3df532d5d"
      "te"
    end
    language "tg" do
      sha256 "bc4726f3598332f378141202dc829356980f9c13e832e5fb341a047e2ee7c05e"
      "tg"
    end
    language "th" do
      sha256 "dff260925ef3c837d83653f4b2ebe4e75369246f3db19e6163ff86dd32bd7f30"
      "th"
    end
    language "tn" do
      sha256 "e73b852da9e5da9789247359e6b78e9e43738896c91c655fe6964f9a417b7829"
      "tn"
    end
    language "tr" do
      sha256 "9974f9b97de34086a01d8a3e7653d972d99b7a001f3c6b2cc7866c3794ff2bd0"
      "tr"
    end
    language "ts" do
      sha256 "4ac62ff84d1ef8ea5359976e516f7df55010e09e7c4b747102dbeb8b71d14512"
      "ts"
    end
    language "tt" do
      sha256 "59418cc0771787a516f97a601a27fb7680184e2c1962f247c96eb72ad2578be2"
      "tt"
    end
    language "ug" do
      sha256 "9c5d67f2cf3b9cbcbe41c2522840cd6afd6613e0dd6592bca6f7346423484979"
      "ug"
    end
    language "uk" do
      sha256 "712a6d7eedcd4c8b221c9c41012524eed8c9ac5ef94dd080358c727b1c56ef81"
      "uk"
    end
    language "uz" do
      sha256 "d617160fac677906cb62f5a00a450be03c3e3f674f89c887c2c5c73a20f40099"
      "uz"
    end
    language "ve" do
      sha256 "245687e863bd875d5ab399210ec5750e1b474baaadd8f7dcec162ee65ed3fff9"
      "ve"
    end
    language "vi" do
      sha256 "9fa57a9de1da993b93ff741b720f6c939e0c6643576a775b4920e7abd0ea115e"
      "vi"
    end
    language "xh" do
      sha256 "7b7e1dab5a4b8c78b57e49d0e2b4b21dead7ff1f9d957f9de5d83fc23d945d50"
      "xh"
    end
    language "zh-CN" do
      sha256 "8dc2106e8db870fd5b7d2fd5e29200cb45fe6e6faacbcf23d33cf03618bc5891"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "044cc065c70be6e2727c1484f47e5e46f0028c142d5835bc60061bb5c7332c8a"
      "zh-TW"
    end
    language "zu" do
      sha256 "75ed7f2dbc30002ea94addcf17df1cde757a06b3b59b48aa3e04bc72bb72a25f"
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
