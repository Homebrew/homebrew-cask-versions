cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.4.6"

  on_arm do
    language "af" do
      sha256 "3388c859160689025ff9ebfd91f75ba2511a0720dfcc121bacc14c07fbca5d13"
      "af"
    end
    language "am" do
      sha256 "208627b2c066f4cf241e42ec6d0fe7667598a07fbfcf38a8c64b620f8dac7ef4"
      "am"
    end
    language "ar" do
      sha256 "2ce3f5c70b52af2c48c65e9bacb7c00d28437a3b4a843c91b16b62cd4d748b69"
      "ar"
    end
    language "as" do
      sha256 "cf5b0821e583f7245bb63e8a76d2d9d52f0ccdaaf7ce1e906ee8846db91c7bea"
      "as"
    end
    language "be" do
      sha256 "5686340bbf86558dc22cd350f0aad7b0435ee380260510dde4bb446286df9e36"
      "be"
    end
    language "bg" do
      sha256 "31eb379888240472a0cf3bb51d965afdca7b6bf4e619952047ff9139a539c6e2"
      "bg"
    end
    language "bn-IN" do
      sha256 "d313673343efb609a3819615db532c1a4aa7c79a0259e2b0a275a41858e3d24f"
      "bn-IN"
    end
    language "bn" do
      sha256 "9e1c4c64fb965d6a374bcc7a95cc1b5b299779a288827195a9fab19d41acfc5f"
      "bn"
    end
    language "bo" do
      sha256 "095ca9f9f03a475ff0f6a0f302b2cf1fe05d0f9fea8e1a53f985f8f6e2ee6946"
      "bo"
    end
    language "br" do
      sha256 "1a4eccd2e09618884bd89651195aa81d780610b0b6837465713774418af14290"
      "br"
    end
    language "bs" do
      sha256 "ca1856ad32a18e50ad433caa48cdeb32d6a36922435a396e7bfa07175371325f"
      "bs"
    end
    language "ca" do
      sha256 "ac903ee6b164a228efd5e27a5578d795febd81396266ddef8300a9b27cc32d83"
      "ca"
    end
    language "cs" do
      sha256 "0ca6e0adf6ef2e8804c400eeea3e4adff2d247702bc9ca06576e57a9c1dc2493"
      "cs"
    end
    language "cy" do
      sha256 "168f8efd9f307b6dc0830b80a48d3dfb94774f3cef8968e348bf31ad85714830"
      "cy"
    end
    language "da" do
      sha256 "bd4a44b2d4e22aa652ee507c3ad5dbe7a007de89b6c5c5e82234f315b261d233"
      "da"
    end
    language "de" do
      sha256 "9de2724de3f997a2384d7214e89ff3ebca4e9dcb2a057a148dfcf1ecea72dbd1"
      "de"
    end
    language "dz" do
      sha256 "1fc47c469d00124ad7964aae8913861e891a47a6c8eb2cf25d641e45db437839"
      "dz"
    end
    language "el" do
      sha256 "230f0dfdb9c8f3ad4b38a75edbfb264cb3d11e7e031d888e18400bde7d5d7a4d"
      "el"
    end
    language "en-GB", default: true do
      sha256 "ead14728bf0cfd92fe69106aa5ded1fa964eb4065a07d5f4b4f7010e832ecf5a"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "1e063201ba90e6da2fef4fa1a0185948379feb84680c4710c4b25c811432fdfd"
      "en-ZA"
    end
    language "eo" do
      sha256 "a86c2951d6b837f1d1b751c5ebb3719908f104a46bd8ce6301b549990af687bb"
      "eo"
    end
    language "es" do
      sha256 "b651b9c06a480f6b40ac073bb7c7444000ba256703ec82b0456184abd3f6da7b"
      "es"
    end
    language "et" do
      sha256 "47e08cf16f188b1138396c9f772cb6acdab2c9ed4d03c14d47054ed621b63813"
      "et"
    end
    language "eu" do
      sha256 "5671d81e854c32b830f857f5f5678889c684d54b8c4001b688be60167af88dfb"
      "eu"
    end
    language "fa" do
      sha256 "766cba4bfc6231b90ec9dea6ebe3a50cdfd38272265546c33d67ed1bee5d4990"
      "fa"
    end
    language "fi" do
      sha256 "b15227160a79a748e61dbf06b8c2c06e6dd0c2aa8d58f436cf0233f672f4fa8d"
      "fi"
    end
    language "fr" do
      sha256 "9bb73c340903114577d70c6d9af298825dcde7d994845df57076598d697fc71d"
      "fr"
    end
    language "fy" do
      sha256 "c5dbfb7d5257ad97fee4571f6d1f0f19c5b2b46e288792652c3eb82ce0be9752"
      "fy"
    end
    language "ga" do
      sha256 "1db61c59ba7f557dbb284344d4f32eb309f9c9cc79783e6a739de6ddd26addb4"
      "ga"
    end
    language "gd" do
      sha256 "98ec7f6e6e38d3a3cd40e6f8bd4d5ae5b2aee76a7f2a61711ae591174bfb3a7c"
      "gd"
    end
    language "gl" do
      sha256 "b1002cb396edd70325d6bf550ec7d7d2da6d7cd3d40347278e038f3623bdd7d6"
      "gl"
    end
    language "gu" do
      sha256 "192a4a10cb80d9b8951940a9a33c68f47b6924856ba68802fc8276e1cc666a20"
      "gu"
    end
    language "he" do
      sha256 "463a03282d6bd9fc5468945c239445acb7d57b22aaddfba6d4dfac61e53e350a"
      "he"
    end
    language "hi" do
      sha256 "8340d90ce37eec5aa5ddc361823ca109efc9ab2e59ef2186fc8f04e520f1dc0c"
      "hi"
    end
    language "hr" do
      sha256 "04f07b325a99ccd03cecdedfdda8ec2cc97a10a5cc9fb0a0c437e7e41ddaf051"
      "hr"
    end
    language "hu" do
      sha256 "d3cbc2b2fdc8a997e517b65fe7fba69c905c6ea5418f16ce60d9167b735c14dd"
      "hu"
    end
    language "id" do
      sha256 "0630afb503e68b09ff707ca814d142dc8fe31fe4962a679f4d6cf1f99739d39c"
      "id"
    end
    language "is" do
      sha256 "2d8edffdeb8111be389e67eefd096b95897478c6003357a5f17751a70450d3a4"
      "is"
    end
    language "it" do
      sha256 "7dfb3e14248316eebba3c3d5e6117875a7283bd06c4a78611431fa95d77a3e2c"
      "it"
    end
    language "ja" do
      sha256 "0af07262cb1a2d6246c4fa328b48d41b1aeb7b4a1a579aa25d0a0b8b31c70edc"
      "ja"
    end
    language "ka" do
      sha256 "93ac4c98697d81c6d420e0286b71780ce2098ddfd2f3798aa94211178df30c89"
      "ka"
    end
    language "kk" do
      sha256 "d491be8f72063dfd05ecbcd7a95c2df78fd332b572cf2dcdc4d230a736d911aa"
      "kk"
    end
    language "km" do
      sha256 "567d2ed8a17881e81785257e41fc98fee4ccc4155fdb83b32872f29c6c320ee4"
      "km"
    end
    language "kn" do
      sha256 "0a0616dfa7392291fe5c55efa0696e7d5f846188dbb9f367057ea235015606fe"
      "kn"
    end
    language "ko" do
      sha256 "7fd2cf95096586e073a28422693c57d84e39d9e20c7d815af7aa71ec803c26cf"
      "ko"
    end
    language "ks" do
      sha256 "b2213a115ac45ed9648ca9a64663346e2867f1e4467a86703f2eaf56d46fb71d"
      "ks"
    end
    language "lb" do
      sha256 "f6f308db37a7c132385a7829c9b09895b1c5ce4bfc404b1d602e90f6a80fa35c"
      "lb"
    end
    language "lo" do
      sha256 "c48bbfa40b75feb0314eeb70c6cc960e07daeddd790c22303ba4c11a1119fb00"
      "lo"
    end
    language "lt" do
      sha256 "fedd81d70ef9290466b2f97b59fc9c4ed13ea49d6658cce0d5b51c6b5d151f05"
      "lt"
    end
    language "lv" do
      sha256 "df06b5ec9a7a559a70b3657828b5a34bdc08cf63d408a15133a1fc05d9e2da65"
      "lv"
    end
    language "mk" do
      sha256 "6310fe2712d1de58d2aef7b4c8f4ff6162c310523e635c72af9b687d14fa87ba"
      "mk"
    end
    language "ml" do
      sha256 "e66be40908e810df8aac094ae6ab305152ef25cdb4299bbcf4f8dd843e3ab7e6"
      "ml"
    end
    language "mn" do
      sha256 "4fd3c87212c461203cf730fdf88f77ecbb8e7e8a4dff798bad846fa0fefbc337"
      "mn"
    end
    language "mr" do
      sha256 "993eaff0cfe23e3b748441b6584f6195d44cad53f6ff55052403f772684bd60a"
      "mr"
    end
    language "my" do
      sha256 "6a811bb9012d8de8d325a571e56d7789a01e53348585a1bba7b4435382697aa2"
      "my"
    end
    language "nb" do
      sha256 "d28aba0e92b0188e97292df85533fee7e46971f2098ad465be17442c6a5f6b77"
      "nb"
    end
    language "ne" do
      sha256 "cdab6f9a8a14e592c83f34df77e4c4a2530f34d3ac7c7da031efb5af8c46f673"
      "ne"
    end
    language "nl" do
      sha256 "eed78abb557c6a418e99c52f96c7fe5e7891866ce724e982a5cd826927119d66"
      "nl"
    end
    language "nn" do
      sha256 "ca20810f9bdf88d84f8e78ffc7e644c8e1f45ef894aec8c6c7a7956b883732e3"
      "nn"
    end
    language "nr" do
      sha256 "908f06e954f84c051cadc0b2c162446b3c2976f951ba28d911653e0ea697470e"
      "nr"
    end
    language "oc" do
      sha256 "f4edb5e72d10dbb6edb8f482c3277cc288322619f712a7fb6b046271dc978a49"
      "oc"
    end
    language "om" do
      sha256 "11abcc92ce83cf169f1878827b6e1ac7de2ab2138f4c3c70249827361fc36318"
      "om"
    end
    language "or" do
      sha256 "4efe4531285b385cd80c3fa9165f5bc5e94ec91e14b2eff4080891e43d8465ad"
      "or"
    end
    language "pa-IN" do
      sha256 "cf7d592a12a8811557644782217c92847326e91bd1d8f78af6781f7d1a1aea88"
      "pa-IN"
    end
    language "pl" do
      sha256 "bfaea35eb40458d5b332a73946236ee37b4390e2632e332a9326ad5a5e1ffd90"
      "pl"
    end
    language "pt-BR" do
      sha256 "3a415c887d0dd2ab28631ca1d5b5e40bdbaab4ac9bd910a1c37d8e4e27320df7"
      "pt-BR"
    end
    language "pt" do
      sha256 "90a698401d4874c7dc5ccea3f965a0590d5b9cdcdf834327455cf805b06f3ead"
      "pt"
    end
    language "ro" do
      sha256 "83ce5551572d5d7ef2d6ba6ef51b57c41050620e8b62c854c9c6fe5a83ea465b"
      "ro"
    end
    language "ru" do
      sha256 "a6214266d9fc6571b0c7e01652d281b89bd38158fe584bb0713912bb4739b7d5"
      "ru"
    end
    language "rw" do
      sha256 "5d1bbc5915cf233a16346b3a13448e2f9e046fd9e91ad503b21e7e782158c924"
      "rw"
    end
    language "sa-IN" do
      sha256 "ccb385ec5edeb3369bcb57a201cc5ab042fcfaa5935e110a26b4ad7620a6619a"
      "sa-IN"
    end
    language "sd" do
      sha256 "21fadcf4d22645fa99d82f612f1371a78574d4dae3e383499e873c0a8fe652b9"
      "sd"
    end
    language "si" do
      sha256 "9438ebbfdbaa098f6c9e65e3d6731eca01a078a0c3f2dfce42211625fc4ca7ae"
      "si"
    end
    language "sk" do
      sha256 "4aa50ba41f8c26f9a12eb486d98131c9dde6eec8cce0c244f63c90b18000538d"
      "sk"
    end
    language "sl" do
      sha256 "e5f03937644e6dd070bb246483f68a572ca826a4ff978cb8874458a2ebd30d6c"
      "sl"
    end
    language "sq" do
      sha256 "4b0b7c0989595605b506ead876bc114f220c32acfcdb686de33b39d90281b014"
      "sq"
    end
    language "sr" do
      sha256 "1e6b4fa86eb46b7175c932f03483020e4cf9769e4d99bedbdb4df08f84cfd4cf"
      "sr"
    end
    language "ss" do
      sha256 "6f0cc442444b5ccdac975b74e0eb5777d9861bc04cbf614d7e96358f66d1d854"
      "ss"
    end
    language "st" do
      sha256 "9d891874f22d7a0e492db793ed95e702145530ad03de8b91cecb4e0776df6b82"
      "st"
    end
    language "sv" do
      sha256 "d46cfd6218b4420694b902f507731766cff50148f9aa74fdb14d89495e65c95e"
      "sv"
    end
    language "sw-TZ" do
      sha256 "dc196d7d3d2665637f2ebe8c105eec0cce76b718a1d80eeb8c52d2a09de83918"
      "sw-TZ"
    end
    language "ta" do
      sha256 "1f1ed9010f3b8361a362f604d5a76b6faf42744ce56bed9529334f7f4563c912"
      "ta"
    end
    language "te" do
      sha256 "c8b3e2b94b733fe68550a69e2b7b077fe7225cfd9e0dfbe032f7bb4358b8f718"
      "te"
    end
    language "tg" do
      sha256 "58ef33644ef6dda4ee1b1b1dbe31a6d5b2e537557807117835e7aa46741cb3a2"
      "tg"
    end
    language "th" do
      sha256 "8c27d62890b1b7c1a60edd4ffa529c353ef32adc5a49f52e13902e4b0cb69a66"
      "th"
    end
    language "tn" do
      sha256 "d41e91c2966e68256c84c605c25ce292919e6cf652e3cdb66fe77fd0604bb456"
      "tn"
    end
    language "tr" do
      sha256 "837325bc653776c82942260e2fe29f738a127572a58623a61b0294354fa86cc6"
      "tr"
    end
    language "ts" do
      sha256 "77b8c009ffa646db76f2914d0f340a1152748dc2cd2ed22dd8a58fdeecbf6bae"
      "ts"
    end
    language "tt" do
      sha256 "bc017ae00cc1e863f04776d314df50d1c1be2258a667e9ae145eb7c1dea580d7"
      "tt"
    end
    language "ug" do
      sha256 "82e84aa268cc043af61e5825ef6b3d42446de424e8b8ff1b83cc99d30a26cdc6"
      "ug"
    end
    language "uk" do
      sha256 "1cf6be14ddd39f38536e62637b720c4f4b24068055574c14608ec08d92847008"
      "uk"
    end
    language "uz" do
      sha256 "42e93122184a7074e36311aecc00e971c94c57f19aad6e894e73bd8bdd8595de"
      "uz"
    end
    language "ve" do
      sha256 "703d53fb86f575383399f0c8f26270eb737ae8b0b57d42d045e558300007d0f2"
      "ve"
    end
    language "vi" do
      sha256 "dfbb667281cc6315e7fc07794dee5d5b60b227c45fe0cca87320905263bbc3fb"
      "vi"
    end
    language "xh" do
      sha256 "04c5dfb7d4f023b2c98fbff3f2d244bd87f68680a6ffc0acb6a1a59247eff3dc"
      "xh"
    end
    language "zh-CN" do
      sha256 "50248a5026f8ae8b508382cf7a624d0551bd8420c3b6a6ce59ccf96f38a9ae39"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "8dfb0c0a82706b1d8a5213ee9be6a2ee67fe4bd8d4d610e526a94758d814a9e8"
      "zh-TW"
    end
    language "zu" do
      sha256 "c8b018c5fa3dcdfeff368d69d616ca2eabab6442b2bfe4f8af366f5bc39a1216"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "50fcddd9ba9b3e61bae24b32af8622f3afea7f0d759b6b33e8fedda627ec7220"
      "af"
    end
    language "am" do
      sha256 "a21cc9453b5644cd169289fb52e9827fe61f2a60e40124c0b83868f28e645c87"
      "am"
    end
    language "ar" do
      sha256 "00a798067c8eb68ae1c7cc10e74e85821819f0e0ab84a8d910714a5ee22bb2f3"
      "ar"
    end
    language "as" do
      sha256 "8b915f460b006bdd30aaa5c114f0832cde1a1574715184214381675fed5d2a60"
      "as"
    end
    language "be" do
      sha256 "08db95c2adda9bf004166bc5c49a300199a0df926c4fe3c984e2abe54b8c2c43"
      "be"
    end
    language "bg" do
      sha256 "8dc1b4215a79252fc9e0a75d6393ce73235291ee65147bd3b841f78b0b9b5342"
      "bg"
    end
    language "bn-IN" do
      sha256 "1a83e221ad765247157a60d5d75147b74113c5b98da4134de9c922f99ce10dcc"
      "bn-IN"
    end
    language "bn" do
      sha256 "52b47facc38f22c5f08b1c6fa06b2fd7e380795a32ad6a6f37de3a9d5a535c74"
      "bn"
    end
    language "bo" do
      sha256 "3d36ecf1e7de1dd0645fb1116f95aa174ca2a19404e210c3caad76c3c12e2113"
      "bo"
    end
    language "br" do
      sha256 "ba5aedfd0b6db1e12e7f501d00a3d7fb505705f1d85d9d62998990d16697b7fd"
      "br"
    end
    language "bs" do
      sha256 "658486c7472990ad6620a92e2066fb4087756d6d7f5188e4084c030cf16154b7"
      "bs"
    end
    language "ca" do
      sha256 "13bd7dc3b423a34a8e3f63c530c14f1b904c06c692000cb525cf53eca5d261b0"
      "ca"
    end
    language "cs" do
      sha256 "6b0aa16db14c4eef48d068c816b2edc8929ea88802d0c01c92208b151cfa7bf3"
      "cs"
    end
    language "cy" do
      sha256 "5b225ce11d21e685b59d59e6dfc77a26bdf8772c1ad6bd978dcf2325ccd5c3ea"
      "cy"
    end
    language "da" do
      sha256 "5451ed80954923f675895cf37848ced7d11b7f65bbe73be948067b6d7a903a91"
      "da"
    end
    language "de" do
      sha256 "e97b4e52c7561fc1cbd80f5dc222c0652f89e6e2d1146c7cc8d5485977980a28"
      "de"
    end
    language "dz" do
      sha256 "1dac8ac95d51ff431f30add820073ff7e1bc894751e712bf379153a1b9387852"
      "dz"
    end
    language "el" do
      sha256 "c105fffc2088b5e0e8971c048b1ae6a98ecec11c45a12f3800c808e2cd291143"
      "el"
    end
    language "en-GB", default: true do
      sha256 "e09d29d9c742a8ac5e47888be9e6730731b141f6139a81346677f9509357bf75"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "e8c0143b79a73133849c42cc30a55ceb7c0ec50def95c4ca787efa882fd6ca82"
      "en-ZA"
    end
    language "eo" do
      sha256 "483f4ec0946766fd454b7ed633126a46407165caf769955580cb62cf5332ce53"
      "eo"
    end
    language "es" do
      sha256 "5da6544bce297918fae413d64ae8b276fe8c428b23a3b0e2ae1c0d3752280c8a"
      "es"
    end
    language "et" do
      sha256 "8bc12c756f9f0be49f681c1e5223d02acf940b8faa4024045c90f6fa70fd6280"
      "et"
    end
    language "eu" do
      sha256 "c9357099c2e0fb368dce9e01efe6fa0cb1f7068457f1da400890e14e759b78ec"
      "eu"
    end
    language "fa" do
      sha256 "0ae75ecd5a700459228418a577733a66330ef98923bd3721ffc532005ef98eb2"
      "fa"
    end
    language "fi" do
      sha256 "2d830bcc0ef0285bfad533c43b8f82565ad6e75e69a72a90504b6964d493137e"
      "fi"
    end
    language "fr" do
      sha256 "01eb13234022fa6550437c2f583c3e045ddd52c4b1738bf6bd7705017f8cbaea"
      "fr"
    end
    language "fy" do
      sha256 "2d84bf5f38188721ff286255d9e73c06647677180d3c75126acc273724087b20"
      "fy"
    end
    language "ga" do
      sha256 "ab80b4f200b99fbeafb13070364816a3d50100cd021ae469835080ff9f488af4"
      "ga"
    end
    language "gd" do
      sha256 "6daf3d10b1a809cfe5bf2db31daa195d930d0b8ec8cb1da8f94d90d99955e0eb"
      "gd"
    end
    language "gl" do
      sha256 "f6cb34edeb4b4e4a39ae07f0afffcfca22edfce3eea2896202f6bd7c9c6ec53a"
      "gl"
    end
    language "gu" do
      sha256 "a9f452b49d49848cf1fee182dcf25850fea4eb3d11b4d6031b3e62cd52616a59"
      "gu"
    end
    language "he" do
      sha256 "73eaa9a914c60735bedc2085235415d35b038e9eac7da10e48c5dba78c875860"
      "he"
    end
    language "hi" do
      sha256 "3c7a4ccb3bfef1cc0084282262799783aa1cf62ccf847aa72f2376f445c772b0"
      "hi"
    end
    language "hr" do
      sha256 "c3814b6d44ff75eadc786af52cf3235d4d3e2ef443c15a8f45c0761466723494"
      "hr"
    end
    language "hu" do
      sha256 "24a1480263a8aa98124099b60cc0f8b878c30e711c0139fac838ce7c5d9fa462"
      "hu"
    end
    language "id" do
      sha256 "adc8f7fd67d24da133f3406abaa373855c678eba49bdc6e7eb8b6aa6b194b174"
      "id"
    end
    language "is" do
      sha256 "d1569e170136248365d6c38df2e896cd85417ef85762193811a4c2a91b0189b0"
      "is"
    end
    language "it" do
      sha256 "bc6ace4c2ffb20148048b0154f5b40199b88ccba1a904ea746f021465b9e10b2"
      "it"
    end
    language "ja" do
      sha256 "1d109ccbe5f5c3c11e8884e6449e061c00f63715e223d261d33d2e99ea66fff1"
      "ja"
    end
    language "ka" do
      sha256 "bb91b3a4f42b371ed4797bc170b3cbadae83535ce69dc96d7c1ead0c10f59098"
      "ka"
    end
    language "kk" do
      sha256 "e608827a508542356a96b1df5c38611d8a9e465330f5e460064bd6711b604548"
      "kk"
    end
    language "km" do
      sha256 "9542c6fa1d57e59f97ec298fbc8f14669bfb1e707cc2f01c5944514d7894297a"
      "km"
    end
    language "kn" do
      sha256 "90f1b74ab5a4d56038bebb7f880ee1918f73fc796d954e6fd9490bae01b3902c"
      "kn"
    end
    language "ko" do
      sha256 "556c37af4da54b4f4a15911d71e8f415fcb5c200bb2491584cbfdb6af8df9ab8"
      "ko"
    end
    language "ks" do
      sha256 "07cace959ad57e4a9765ca0bab735fc2c79af990d9eb3c538226cd20c2f3e4fb"
      "ks"
    end
    language "lb" do
      sha256 "50f4f2bd6a2bb0592a9b34a4c510f8c1ace0b7a5378adb0eaa3a0f201585af11"
      "lb"
    end
    language "lo" do
      sha256 "e4adb1e3e6543f84e1a533f0e6fd1daa14f1243c830dc733680fe94ea1c284c9"
      "lo"
    end
    language "lt" do
      sha256 "88e23139fd5249cb21c5a034efe0de4012545f09e65e683c0c8bb0a8873bf550"
      "lt"
    end
    language "lv" do
      sha256 "c26211d2700255807402a0796667788f78a22203ef3b3cc2d365a1a8a7dc9c5b"
      "lv"
    end
    language "mk" do
      sha256 "579b06123b3fd48ebf82c0c0be2160989e49afe83a990563cbfce704b15890a8"
      "mk"
    end
    language "ml" do
      sha256 "afd1eae81ceae5cd293c50ca99f4db01ab7da98f24838fc9561c71bd877e9ac2"
      "ml"
    end
    language "mn" do
      sha256 "cbe75e4ed49fb4411fa3271a110f35664401a30ad46cc8ebbc261edfa085dfc3"
      "mn"
    end
    language "mr" do
      sha256 "82472caadb1c83fc4ec0cbfbff82cb0210838d72980e630a2105c30a96f8f5d8"
      "mr"
    end
    language "my" do
      sha256 "04a2218ce308bdab665c877c03085dac3d42fd18620b243808c828e96eb9627d"
      "my"
    end
    language "nb" do
      sha256 "b3bd70aeb6492205fb48b049811c877b71380f772aa2e70cdd345e08ffb4b51f"
      "nb"
    end
    language "ne" do
      sha256 "d31d9f61d959d5c6358429dba473831e9fe4fbac920f00518482344e0db6fe2d"
      "ne"
    end
    language "nl" do
      sha256 "49c95ebe75a2468af1089673f4bbc1587c2277f3632ce3d06e142766937332b3"
      "nl"
    end
    language "nn" do
      sha256 "b4c0849edd7cee54222e2b03bb52bbdb9fb4ae9509d2b61c8c604447f2afcd26"
      "nn"
    end
    language "nr" do
      sha256 "ced823ee163a13056f2133b43741e976f3720af33b202dab3c3b2f3584781897"
      "nr"
    end
    language "oc" do
      sha256 "523b66cf432e331a264f2d5546a287b99d1b4d4bb09d85ffd4212321920557ea"
      "oc"
    end
    language "om" do
      sha256 "9b495a7642ec32beff5600b2473840366b47a67f003bb861c07f6ecd2f8afe70"
      "om"
    end
    language "or" do
      sha256 "65e841888937f5e24ce5502d98221b7117fd49c2faf68df5a37876b4127cb768"
      "or"
    end
    language "pa-IN" do
      sha256 "c1acefa318b80cb268a718f64f9448a942c0bcb7084dc11f9a9cab2e57149836"
      "pa-IN"
    end
    language "pl" do
      sha256 "96a94d86159762b7dbc62d437850f3e7b655475eac50a1330e802c4aa0c120cc"
      "pl"
    end
    language "pt-BR" do
      sha256 "c6beaa2bfc05a89b0eb7546ce5b96b50cb0f6248cf4b3d8777058d04a5019d51"
      "pt-BR"
    end
    language "pt" do
      sha256 "6dfb416f7acd74b8283f3db86d1885ae45dd8ead8dbf5c19456835705a95850d"
      "pt"
    end
    language "ro" do
      sha256 "0f5b6632b32eb33ffe6e796af95254c0940d3e0eb68b233d89733ae1ab2b0946"
      "ro"
    end
    language "ru" do
      sha256 "9882e9f3c8943d1ee300c0521cfbfd2b2f9679edec73d213a3d7a37b527ee01d"
      "ru"
    end
    language "rw" do
      sha256 "51b2e44ea9209f759b933cad695277ba2aee1960546a4b37d3142b561e1d77b8"
      "rw"
    end
    language "sa-IN" do
      sha256 "100b5f79ee89a3be80539314ab995c05e970ba816f5375f345b0316681f9a4f5"
      "sa-IN"
    end
    language "sd" do
      sha256 "4f73d1b1579f64b95ec77bc94c659ae9522967b8cbf12830754466a69f0939e0"
      "sd"
    end
    language "si" do
      sha256 "9f702035c79de562cbe428ef59db6f24a300b2e3dfa5e760424c06e401c7191d"
      "si"
    end
    language "sk" do
      sha256 "ae5e11719af3160b465a3db80b7ffffa1437457a205c0c0cf67b2ab9108bb20e"
      "sk"
    end
    language "sl" do
      sha256 "a7ec2f1f9745fbfd112d27860251eff6b909ebeb5806b7d43de1fd193ae98b40"
      "sl"
    end
    language "sq" do
      sha256 "3eb93173351fc053bc13ef22edbf9cb539ccebd10af55c2cdabc43b26e61ea3c"
      "sq"
    end
    language "sr" do
      sha256 "a08febf20ac6d48fbafc6ac61f692b924555d1c5638303ab030ecb8c07fa96aa"
      "sr"
    end
    language "ss" do
      sha256 "6c8c6447175fbcddfc32fa4ffd72196361713f822c8368a9b81ac04fe88e9051"
      "ss"
    end
    language "st" do
      sha256 "27ff4afe03a791065ecab34b6344af6b29def29f5339bc0f16bddd328b660a76"
      "st"
    end
    language "sv" do
      sha256 "83cb2b1601fd29fdf654330ac9f545a765ad5760c4976fb50cc248075046b45f"
      "sv"
    end
    language "sw-TZ" do
      sha256 "d0aca05b7e94cc56e2cc5efb65cd4c54c72a30ff70a7b9561a87dd409f0cb5e5"
      "sw-TZ"
    end
    language "ta" do
      sha256 "a2c757ad03932ef165c0a302ee38ef19d920feb01df4386860351e916a95607d"
      "ta"
    end
    language "te" do
      sha256 "8e610c882582794a1c15e3760e333b4fe3213a065d802fff53c01d94ed137221"
      "te"
    end
    language "tg" do
      sha256 "7082f7ec872a6ec45dfdae4808c81da548d4bc331c4d9a5b7cc7b47bd77e83f7"
      "tg"
    end
    language "th" do
      sha256 "2b53cc164750597c86d526cfaea9c0b344021f95b8a7e854306f4711ac1f6730"
      "th"
    end
    language "tn" do
      sha256 "60fb981a12d5c07588cefd04689e68387893f5f60dd9c372b4513fb819ac2d98"
      "tn"
    end
    language "tr" do
      sha256 "094ad8468d14cac05204409d35ce0f8b1190b1991ba5f32d3914ce91150fdb97"
      "tr"
    end
    language "ts" do
      sha256 "f269688a92e025745c7a83879b69da11e2ed4d2908280363d18beca068804388"
      "ts"
    end
    language "tt" do
      sha256 "ed2a287eaa2924a984e58d709baf5d0ea4a34363f9a2c74b811c358d8cd6f3f4"
      "tt"
    end
    language "ug" do
      sha256 "e967e149a465d5ced435e3d819a51605bb3741fd9d32b36b81f43a61154112cc"
      "ug"
    end
    language "uk" do
      sha256 "a28f1b55e5ac4230bc062c446282872cd833cddd476de20623be1693ab3134bf"
      "uk"
    end
    language "uz" do
      sha256 "295e3d4fe7288cc2e9aad257822da4d6b5f8d38185c95bf0566bd8d97ccf65db"
      "uz"
    end
    language "ve" do
      sha256 "168a3ffe4bb25aa9810663d5e607cdee30acfc193159be8e5c68cfed2dfe5add"
      "ve"
    end
    language "vi" do
      sha256 "ac44950a1f29010a250e37ada7e02333246aeed5749322d1063dda7795efa41f"
      "vi"
    end
    language "xh" do
      sha256 "95492e97f1d1cb1ad27e1c85110f764be744f89467773ed049f6530ed1579fa3"
      "xh"
    end
    language "zh-CN" do
      sha256 "12b5e52a868025853a15334ac9c3a7aaa85aa23e26170e0bff5e0f0ec4bc54ba"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "26ceae21c542ef2353e74b904766449daa1f79deb8d8c11727dc2cfe7e2784f5"
      "zh-TW"
    end
    language "zu" do
      sha256 "e1ad9adf41e31054aeba34ffe117e7724e4b7241bf02ef0a1bb72469f2c1f635"
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
