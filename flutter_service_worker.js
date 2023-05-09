'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "d85f5e53a117aa1860298f63ea18ba00",
".git/config": "002abbd9e906a3ee950c404f2a0d519e",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "0203eef67fe0cbe557125f4f76c20343",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "01ef2f6abf0d95c25334320af0981b01",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "f60d44b835ac67e0c7bb1df78126f338",
".git/logs/refs/heads/master": "f60d44b835ac67e0c7bb1df78126f338",
".git/logs/refs/remotes/origin/HEAD": "28de578baf87bb76bed0c5b1d5e77250",
".git/logs/refs/remotes/origin/master": "6f097daf89dd294a53474eeddf4723be",
".git/objects/01/1b4b92e5223b5b6c8c7489d28429a99f525c2e": "c8f7a29360eae3be3ac22b01fcb0c529",
".git/objects/01/64f65fe9e95874c31fcb73230ea07fb0e10a40": "916b7f686a6cb243a0475e91f5410469",
".git/objects/03/1e5586f18abc48c6a3af245509df731104ffa3": "d34e7736372ba9dbfb373a26960613eb",
".git/objects/08/00de3443310e9350c9cf10895083f3277d69fd": "ff1453ec4bf63cc2f2939585cdce963d",
".git/objects/09/409c0818996be9af138d6ec0aae4bd329469eb": "cd278f01f052a592640929d7cacb407d",
".git/objects/0a/650c8eb26241fa93cbe42f334252b08f0ae246": "18df6e5fed57a153df4952a57bb29a0a",
".git/objects/0b/179b5764af2de6ea6bd0cea271e933ef96358d": "d835a418717d367a1698ea731767e48d",
".git/objects/10/ae46e70488adfca169e2de1672c2096ff48f6d": "88f22d0dd8c74a5c1ff17b0cef3ca419",
".git/objects/14/79590d456b766a29a200793b72434b6acf67bd": "75d69229e0a0b0fc1b50e02f3d92b576",
".git/objects/19/f1247035713e90d7e3c422dc4a40b2def1a41f": "ea0013a81f700f3d650196295fd8a68f",
".git/objects/1d/79d196699c40520c9dbb400aedd6f5bf300dd2": "ebf4239c1f855bc8f073f2f206c39d84",
".git/objects/1d/7c4dad0e669945e94fdee30c39cbd5d1121bc2": "4d2604ed4c419c4f40fbcbe38ae4d0f5",
".git/objects/1d/ec8431b47c37bd436f2c4029fa8c110cb7ab17": "5c5e215987b03a83f9f59096089acd16",
".git/objects/1e/51148a7e058c24f585e6f04087e23a78d9e7ad": "84e2e5775dcbe0935b9abfb7ebb8bc2f",
".git/objects/1e/5df9cde24012cb9118f17a289b98f8c6e244c8": "09b76a8b2b1d4ad7c8513df0d2fc94c0",
".git/objects/23/82fbc2824c7222264c152687e1a03467c22bd4": "a16a2b65f817c63d079506ad9001096c",
".git/objects/23/8487e434e32b6b7411788363479a402fe94daa": "8825779223b339df83facc7a887545b7",
".git/objects/24/7d596300f0b61deba2ae5db405cd0fbf0de4c2": "c817fdeefe8ccea0ed33fdd2094401a4",
".git/objects/24/bf6cd25f2007ff889f422f9b3e19fcdbce3b57": "f2fa59825752f8d018f7ef09f269c2fb",
".git/objects/26/ac12847a3317da466fe7323e944d4032559335": "836c881a9783060da0a8fd7dd358cba7",
".git/objects/27/8a305ac86c3372fd4f97322ca67edc5d3b345c": "834062f39b7d95ae22a7c46ffbdeb9e2",
".git/objects/2a/0d7f2eb144ae05aa537d35464862be6e05bf73": "1e4300e759b3989cc485e4c1c160f4ac",
".git/objects/2e/f56649248fdddbeb3cd5f12e8d92425bdcfb84": "4569dccf590d2228161c278b32cd78b0",
".git/objects/33/c1cf8fdae1a3823abd7b4cc2fed0d0d93efba8": "74257563c9f5a911993d6127aab0b82d",
".git/objects/34/8371c3e63cb78c45e95075e8c50f05e80070c5": "ed0bdbadd096a4f668ce8bdd6db017e8",
".git/objects/34/c0abea6157c95222774f27130b0276448e2673": "9cd49273922e424fa0f5b7464a0d7c7e",
".git/objects/37/d5b3b46dfe2a25a86d4c8bb573b30f0a1c68bf": "0d1da091e366ca5eda6140e33831cbdc",
".git/objects/39/0ad2e1bb62f525030469f98c3b8fc92e8b5261": "97fac9c108021366ef61eaf612c08d86",
".git/objects/3e/7b706aff512afa27541955cbd43c8687dfb274": "579a223b73e5edcc78a165932d06bc4c",
".git/objects/3f/af709edc77ceb70b0b8b9ba06d91443c4f4b37": "5f954d61960a0ec78658615b1660d7dd",
".git/objects/40/409c91253661b41a21e00030c1d9e584452da0": "dd5b624808d9ea5b8c22e1ae8e84b7fb",
".git/objects/40/9c3ff6e941ca9c905b31c0a6ab22f15fcb0fe0": "ada2e95551c053217bc369a361def381",
".git/objects/44/b696e5c778547741e89b927cb34be83363c47f": "713480e29c2d7608cb72296e21136c2f",
".git/objects/47/c5e07a92b4c77479eec33b1241c61ea01dbd2d": "54d55dff986750cbff620341a7aa24d0",
".git/objects/49/4c6763c71fd8229431ab420a0373e988d89812": "7e46eec58e09f0a30925c6f96eefee85",
".git/objects/49/78247fa33f006241ebd8a1fefe3b89317ed0f2": "8f6ad2c198026a99a240f613cd425d38",
".git/objects/4a/6d9c719c55b30782b610ec2a76da4d2d6cb11c": "753817ff7032620b943507b977944dd6",
".git/objects/4f/6a9c807eed00bb588dbef931dc0999e10b83c2": "e316d0a2455830bce6b2557bbd8faa5c",
".git/objects/51/4074083996a80890e0edaea0c76b509f6983e0": "0206cb83ab9c347111db63cb9042de49",
".git/objects/54/195d8084600460c9c8abb7773aae4f625863d8": "96949f7bd6630d8d9c9ebcf2dbe9e4ee",
".git/objects/58/3ad19727ba802bb50f4f82f4db540f049286ba": "26c894e1ee97989d92b6ddba220e2e8d",
".git/objects/5a/971159a6b0c4564e53142ad1f5ce33e6d95c3d": "8fe94e59a152c318f7e7c4354de8bb56",
".git/objects/5d/14d90543edaf072497541c303d50bc044aae3d": "b7e6a76e38365fc0e9f7a5a73cd088f9",
".git/objects/5f/3c754ccb740f051cf8d77885867a500947ddfc": "3123782c21598f69ee3acc77898070d6",
".git/objects/60/a2f015aea1c5dbdadda16defbe88cca30f7a05": "58691623103dd025e928f34c07ba1031",
".git/objects/68/978f18dbb096de46dd7e240f7501d3f5ec680d": "f20e44ca26d59b286de965d82a601c16",
".git/objects/6d/045f2f32b3ef14ee7ff9ccff7b7ac8490580a5": "aadbbb222e04059ef24d49628ea742bc",
".git/objects/6e/e8c6a735e8e80f2cff9fdf36b0751e45472e3e": "c9fca52ac502f35d7d20db92309839a3",
".git/objects/70/154355edd2c2c88faaa4707f7236f0b345250d": "1e59ba32899717b789fd9e83dbca4633",
".git/objects/72/c97b26e03ad3bc97924a4eca8220449deec67b": "d19c5dd23ed37a9e31a2184c5547fe0e",
".git/objects/77/692e8d43f9f785f3e4d00fc0f871ae58ad27c0": "d6f78cb41d15cb4039b7702fe7906f24",
".git/objects/77/781566ea9ef9543cbbdd8d3b1b862b46f7c960": "19b704f2455e4712b347f008534fbbf7",
".git/objects/78/c9bad5436a873ba895ef84c7c7b2dd104d02a2": "495695a59ec505e0fb4c74ae0949ee8f",
".git/objects/78/e19cc36d0d5325d637ee61336e376cbf5c1825": "102ac7d49dbb1c730951e4eaf1e5f2b1",
".git/objects/7b/81067bee13c25e5031db651e6bc515e7a468e7": "fe1ddac8776fc8b57157d0e91a735939",
".git/objects/7b/e10b57749973f78d8ab6b17ce92c976a40c50b": "7e6f47e8d3873562e65aaa88c79c89d6",
".git/objects/7c/621ff68093f9b8ee783efccd0011aa99abdf4b": "9b34df8edb5e60ba9345860346185321",
".git/objects/7f/f8de4c91c2f9b2e6d22db93be279d65faa45bc": "b96897be6ff03ae05a57d8fdc03fbe7b",
".git/objects/80/ce1698c49cb688779060c7e4533533678b534a": "6e2a60b1c6376e61512c37c22c1de0ed",
".git/objects/80/f987321dec7bda0ca80fafc4e412f73157d953": "c49c5de53c2a62573eead7824b60ae69",
".git/objects/83/0a71e31cfb4b04743cbf4df1c8034b41f87a64": "9ce6377063dc73f2ece57cfe4406c326",
".git/objects/83/c78df56948210950053c3a59fa8a870fc22cfd": "7393a6f82d2c77caf837a9c0228a006c",
".git/objects/87/189caabbea46438802ad21b15d3adc94854de1": "89092daef6b1d55dc633e7781d6906ae",
".git/objects/8b/cfcd5615451ee9f570c9aeac12589259b35af6": "6671db2eb61e846b50741239dacde60a",
".git/objects/8c/dad9a7bbaf7975ff0ed28e14b5ac66c7fd7b83": "57884db8f7895ab3faf2714174962c19",
".git/objects/95/4dce71dfed8bec47dd4d8d65be03163e0ffe8f": "f031c7adfffa5162c87db3acb1e1604e",
".git/objects/98/4b74786e6d00299363ff1bc6c12b7e9cc50f4e": "39a9fdb8287a1609caa9a6e1d7d603c2",
".git/objects/98/ddabab0e0f10ed013a253f6b5b8130eb46c579": "fbdd1a63de9595387157faff4a6d6c40",
".git/objects/9d/03d8bde74fb06d257d2d3a4446f8bf6f47a73c": "acf60c14b3d290552c3ab8416457fcf2",
".git/objects/9e/1751e439cd417f5ac6a66d46530ead78f26466": "ae0d32650c764bbe5a272a18e6796e2c",
".git/objects/a1/3f5c3b9cf5b999e535377f1390e04aebeaf3f0": "3efc52ec1740947774eb17b1720acc26",
".git/objects/a3/08588da825f72c3c5bdfd2a8b809bc082abef1": "c3f765bbdf83c5dfa436fc64b9228fe4",
".git/objects/a5/7fb681bbb2735da50aebd00938e9584435d1db": "1e8b5f27830089acd8ecb93e37ce66c2",
".git/objects/a7/a1e642d5cd950fdb6c387d2c342fd62dfe9046": "f6b9466cc0adf3e9d0276e94bdea26eb",
".git/objects/aa/e04333946f978e2c44913e5785f4e42807c2fe": "b61176ec36bc0b4eb179153de37d4058",
".git/objects/ac/b563739c71165714a239b248cdaccca3d1182e": "633b55f33eb5dd13fbeacc6e42d5daef",
".git/objects/af/d09cabe76cc00621ee0257546cc8a0784c6840": "1d854c9d9cdf2e1b53fa11f32890e370",
".git/objects/b4/b9f13f0168a61bf9e997b98f87470b9853fd6c": "726da0c8b2a3ad5d565631dff1fade6e",
".git/objects/b7/2ddaea6f364d9fc31fd56088df58ccd462d74e": "a972c5a13b2b31e1d3ef462ad0b23cf2",
".git/objects/b9/0962f49f084f9eba1c1203f70e2572ec8e56e2": "b273120c014027205416e61c17ee9548",
".git/objects/bc/6e79a8cd25c1848bc9ebeabfdc05378294f2c4": "1423a3ea6ba9712df150b5fc2a105f3b",
".git/objects/c2/642648b7058b4d7b0467603f702add82d41b33": "e15bbbef65d764d1a52ea0e523bd8cd9",
".git/objects/c3/5a1e5b413323ea4557f64b39d81118c38c3fbd": "b0e1c34942e639e1ca831cf7c4370de2",
".git/objects/c4/5c55f652c9f63402f12d2e8fb3212fb25e5f12": "dff2a53e234c7845d42a398cfe1bd1a1",
".git/objects/c4/84ef16c6f298283957dc26bb4cb77992109c33": "01951663d67c9090fa5d9c6f80f318ae",
".git/objects/c5/a22174dddd34738ad105908b2cbd6df0c546cf": "1659cc3146ad958e0657dcf9861e1451",
".git/objects/c8/4740cbff8967e36c9bfb9bfbbee79c8dd9ea10": "2a79985e6de45feb5bbe2b12ce2f0a71",
".git/objects/c9/351b4d6bff693bd9272ba0ce339febb6ad0617": "f0d91b208d3ae33b7f6f41811a2ff355",
".git/objects/cc/b10cd45bd1e339ccd67ae2f90db91368ce2855": "ef5f69a869f1a743bd71c23d2aa3a615",
".git/objects/d2/3f124e24ac2ba2cc205a7a1efc6b2c93345f1a": "cc9efbb3bb228514a633c1236641e759",
".git/objects/d6/dab2c281f322fb50542c1af7b3a78518990bc6": "e4344f48e06cc3a965f3f3167f27e93a",
".git/objects/d7/538e7428675af97b7853eef63ec16c2152ba62": "eac924fcd831fa3f0f982c9c95d8fcc0",
".git/objects/de/bd39393b0313f8e8a7a3141dc1104932e7a8e3": "aef34005f33c2d1e08dc9aa36c926a06",
".git/objects/df/7473c3f14893f0f6a4c93cfa43c1e9a7d7f838": "327b445034a93ab057f0cd05da20d808",
".git/objects/e1/a86c4fdcc03375981d9b8e9348f3ab6fbeb848": "c1f1cedf3464e7f47b75b8405d11af3d",
".git/objects/e6/ab0f5d178e4ddca831607bc4192a870f4e2052": "23c05b276bf3169104cc8b453050f2b4",
".git/objects/e7/2d17616dec873213d39fa1b6872f1e7b16d3f6": "2bfd69615d5ee5a9a0b0129e2e71aeca",
".git/objects/e7/ed75d661e23022b83d31372e9403dc13034cbd": "6e885733c55b28870752da5e8c108420",
".git/objects/e9/c7993d5b178cc77aefd12cdb14cb9c499b9bb0": "eabed0fd960680f5e35bd403c8b50924",
".git/objects/ea/f2057acbc8b7e0d107911edf713c509443d274": "04152de07ff2944d18928f4622f47f64",
".git/objects/ef/4735e5acf04ffa758a58c3b5a92218af235476": "9116015e0a07aad458ba3c32eb9c236b",
".git/objects/ef/c7469bbadad9fc6508f283b75569db436bbbcb": "15852f59f17e2f2e1d08bd7f5929a49d",
".git/objects/f2/b070adcfc7c3965367e1e42b1ce8bb6dbf26dd": "f3a7a507ca68df5ac4eeabb9edb2a736",
".git/objects/f6/3640e85d1cc9ce742d354109ebb1b82e301202": "c65752eca70c7283de4864868e2b6439",
".git/objects/f7/a392746b163493b2de97011c41783cb1633eee": "008da416ef52de8a26e9b8b637b87b9e",
".git/objects/f9/3343e10ef487f26685effb71e5dab16ff58c95": "4e7a9cc1032cb0982fc882cced7d1718",
".git/objects/fa/594f29169635e7bf3e903fc7520b3f0d64669d": "5965f535325772c3f39ae1cf045b535e",
".git/objects/fa/fd905ea059a506a05d026050baff9fc448951e": "1ad72e8a22fb4aaae01eb849aec4976c",
".git/objects/fb/018881db75c739f6e9a48b7af9818e466c4520": "98557398f26abcb1cd71082f8957eb19",
".git/objects/fb/b7b7792cd5e45545348008cf03a7b7da80dbab": "ab657e9594081a89dca7e534b21f28f4",
".git/objects/fc/3319215f56298a0c8e9b3f972ddfc1255a2cb7": "e51f1505a2194b5a33800ef0c0046210",
".git/objects/fc/c28b2481e60489610a3b835488a79ef271c90f": "915220d9d804f20c6341d3ba9235271c",
".git/objects/fe/ac7b6ee3e17582f1c9e0c95b34df0e1c5d1d05": "baea48d5f2ebbdb542cc87e6f4cb9c75",
".git/objects/fe/ca906d37348e70d18dccb3036126fbb340ef93": "b099f8f5b137c2a16fd5363654805414",
".git/objects/pack/pack-619fad0a2c13bea8a951ad76008fcfdbe3c5ec96.idx": "3a2a99880f5a04c4d03c5144c59b7c41",
".git/objects/pack/pack-619fad0a2c13bea8a951ad76008fcfdbe3c5ec96.pack": "a88d463b485cd1c02c3885d0daf21de1",
".git/packed-refs": "e329a5c0f575e47d199dd83153edfaaf",
".git/refs/heads/master": "2f60290012f4a69f2cf643f4bd43e53a",
".git/refs/remotes/origin/HEAD": "73a00957034783b7b5c8294c54cd3e12",
".git/refs/remotes/origin/master": "2f60290012f4a69f2cf643f4bd43e53a",
"assets/AssetManifest.bin": "62104c82637a2bb4c8643cc503421ef9",
"assets/AssetManifest.json": "16755a1e2b2b8533f65f01656d88f0bd",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "784e485199dc3cbd278ff92bccd81dad",
"assets/images/icon/Alchemy.png": "36392248f7017df1f28b13e1e72109c9",
"assets/images/icon/Bartering.png": "65c1894ac679b33cf6cad28272d544f8",
"assets/images/icon/Cooking.png": "4995671d615aedfa8bc88cc4aa0f7a27",
"assets/images/icon/design_crate/9601.webp": "f28a3a1f053394cc21dc36219c38d4fa",
"assets/images/icon/design_crate/9602.webp": "82ad3ae299e90bb1395f383efa8f4279",
"assets/images/icon/design_crate/9603.webp": "1d476ee70a3fa7ab70ec2f77595d1810",
"assets/images/icon/design_crate/9604.webp": "1c85389341394c414419d2c1273518bc",
"assets/images/icon/design_crate/9605.webp": "5735b9d075632e4f9b29929f2452df54",
"assets/images/icon/design_crate/9606.webp": "6db32fc842d0a602f0ccf54f5ddb3dc1",
"assets/images/icon/design_crate/9607.webp": "a866be5fcef7e2a0eaf606f784842032",
"assets/images/icon/design_crate/9608.webp": "ce6c7865681a099ef042698a3ca32b39",
"assets/images/icon/design_crate/9609.webp": "105538b10d6ee53f16f941c437144c0f",
"assets/images/icon/design_crate/9610.webp": "105538b10d6ee53f16f941c437144c0f",
"assets/images/icon/design_crate/9611.webp": "105538b10d6ee53f16f941c437144c0f",
"assets/images/icon/design_crate/9612.webp": "105538b10d6ee53f16f941c437144c0f",
"assets/images/icon/design_crate/9613.webp": "1b324656964a09d4a2cd1a5ec2412f59",
"assets/images/icon/design_crate/9614.webp": "558538daa0b0497111b23c9504d0e0d8",
"assets/images/icon/design_crate/9618.webp": "3556d4667e9df0b76ad451feba8d7cd1",
"assets/images/icon/design_crate/9619.webp": "b1c72a7f7e3a1c5182f994674e2aef87",
"assets/images/icon/design_crate/9651.webp": "3bc1b14da57b9134b2499926eb8644fe",
"assets/images/icon/design_crate/9652.webp": "d4156107e175978caf676d244f976bed",
"assets/images/icon/design_crate/9653.webp": "e78913d5fb4c72e7e3a6e7972912dc50",
"assets/images/icon/design_crate/9654.webp": "54a398e3a2a5f15482aafade5f8df94e",
"assets/images/icon/design_crate/9655.webp": "457713b40fa735a5ba919ea5d9c430cd",
"assets/images/icon/design_crate/9662.webp": "121c01d452353fce7e63e5b173068c84",
"assets/images/icon/design_crate/9663.webp": "f8f71a6146d6a3d660e214665f4e0c43",
"assets/images/icon/design_crate/9672.webp": "909aca638b3c413cf2aec48d90f5c0db",
"assets/images/icon/design_crate/9673.webp": "27ddb614370b1e30899c6b139436c701",
"assets/images/icon/design_crate/9674.webp": "6a96ccfab834dab9fb3185cad9cf2b8b",
"assets/images/icon/design_crate/9675.webp": "ebe2f89bc8b6fbcabe74195c83aa9d91",
"assets/images/icon/design_crate/9676.webp": "5efabbd8c637765ebf19623027c8fdd9",
"assets/images/icon/design_crate/9677.webp": "50e37291fa66e18a15a7c0f668847eea",
"assets/images/icon/Farming.png": "452edc31be94be408566a7fc64302690",
"assets/images/icon/Fishing.png": "fa8dcdb411a35a7152497ac55bf5e3a8",
"assets/images/icon/Gathering.png": "7a93347e5a7011c89256d387d932363d",
"assets/images/icon/Hunting.png": "4ec629e4916bedc103bd83b84fbbbad8",
"assets/images/icon/Processing.png": "9502e6fe815cb9b995d21fd18ffda062",
"assets/images/icon/Sailing.png": "555b96b1ede9bbd2e815ecd1e2ebb384",
"assets/images/icon/tradeCrate.png": "648eda80e191352a4cc85a03bd9718d5",
"assets/images/icon/Trading.png": "ceb484f864c18a6a51092270b12db234",
"assets/images/icon/Training.png": "9e51e0047764ffb1c19e2fd958d447d8",
"assets/json/design_crate.json": "357758660cc51079de3efcc48074909e",
"assets/NOTICES": "3a5c664a52e8135c429d8097f4ad2ee2",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/packages/timezone/data/latest_all.tzf": "d34414858d4bd4de35c0ef5d94f1d089",
"assets/packages/window_manager/images/ic_chrome_close.png": "75f4b8ab3608a05461a31fc18d6b47c2",
"assets/packages/window_manager/images/ic_chrome_maximize.png": "af7499d7657c8b69d23b85156b60298c",
"assets/packages/window_manager/images/ic_chrome_minimize.png": "4282cd84cb36edf2efb950ad9269ca62",
"assets/packages/window_manager/images/ic_chrome_unmaximize.png": "4a90c1909cb74e8f0d35794e2f61d8bf",
"assets/shaders/ink_sparkle.frag": "57f2f020e63be0dd85efafc7b7b25d80",
"canvaskit/canvaskit.js": "a7815350eca4c0eb00908b1d828d0ae5",
"canvaskit/canvaskit.wasm": "e372502ef8ecc61c9d95828a96c35f3f",
"canvaskit/chromium/canvaskit.js": "486f7827431ece9e405902e3163c7e32",
"canvaskit/chromium/canvaskit.wasm": "1beea20b91d23a5fa36944c5ea17238b",
"canvaskit/skwasm.js": "8f5c33d58a38bab350f7289b3b3f0ad3",
"canvaskit/skwasm.wasm": "3c14cade026d403e16677a9121a8dc02",
"canvaskit/skwasm.worker.js": "b3863a3012fce5442e482648e7f6e763",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "9d87a7743ac26192df7046a0405716ac",
"/": "9d87a7743ac26192df7046a0405716ac",
"main.dart.js": "e9d2e845ad9999d41f82d409c43baf39",
"manifest.json": "9b62272e1dc784f061b813c85c2e7d9b",
"README.md": "bd23c85a235f32d54287c99929e719b5",
"version.json": "2ce216e5fc3f1dc43c19966d6125b7d4"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
