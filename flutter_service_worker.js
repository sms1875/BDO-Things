'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "e913cdc2131bc7dbe8d9da5ac5f7010c",
".git/config": "2a79fdaf1d4831ada0029fa4960fc912",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "3b87f26a9ddd54449c7677b4bd6bb282",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
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
".git/index": "f156b435b8ca99aac95bea7db0bd364b",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "ce9a694dcf1ee693696af0c654121971",
".git/logs/refs/heads/master": "6929f4ed3f8f0bdd5ed27d25e600f851",
".git/logs/refs/remotes/origin/HEAD": "890ee8bf393fd88f7633f55327281da8",
".git/logs/refs/remotes/origin/master": "0546eb746e5438ee00a764bfc2e0a857",
".git/objects/03/eaddffb9c0e55fb7b5f9b378d9134d8d75dd37": "87850ce0a3dd72f458581004b58ac0d6",
".git/objects/04/92e3e72ddccc90961d586ca447322dd081a2f2": "38511b4de69f1ca30240a27f80e5cddc",
".git/objects/0a/4016bf18bf28e2aa3457782170accac8c7c6a4": "d24852fbd0e0090347b4c166c10be8b8",
".git/objects/0f/11236e3c7c1a991fb98869e93253b7678de9a0": "7a5f4d13aaae40a37f94856389676b62",
".git/objects/14/6a6b70bbbf7b9b4f44ebeb7120568b9970816d": "eafeb1091684b2261e2d8cd17d4afbe0",
".git/objects/18/05d81624d7df1cd533425298f4f2b0ae393dd3": "ec0ae8d85219d19cec1095918c4e8727",
".git/objects/18/550e1c02cd6d69df9d24a6e01951289f212e8d": "82ecf641364d0befdccb887194ac0c0c",
".git/objects/19/680f7225e1255a779d57dcd82f55ee4c1138d0": "1a5a6186cd6408264613787c7eb32568",
".git/objects/1a/dff2ba58365a976322dd00ccf442ad2e3ce9dd": "1d96a25e0fbb4171166701ea02114537",
".git/objects/1c/8485742229fb00f2b07d2ed81bf85691d920f6": "ff7295c18cd369640da6bbcb2d9203a7",
".git/objects/1c/9c19c731872670aee2ccb3111aeaf289cbfdc4": "7151ad226097139d120ca7d67ae83fbd",
".git/objects/1d/384f3748038966a5c7316223edf120dd5894dd": "a8d542276aa823dfefb8d26439e1077a",
".git/objects/1e/9640f87eff8f2d7ba4583a6bb7d9f74ef5c882": "2f647fad8fe3c51180e21664f7e75ef9",
".git/objects/20/d87d117c31184ea7e3abbeb48bbc95a9f4424f": "c1dda5ef7e85559f8651cb33da3bce85",
".git/objects/23/d87ddde937fae48246bb85ec4a393cdcad67e0": "ad533cd4c81d0a557ee4c3d65af1b85d",
".git/objects/24/71161069df3b0cbe0dd211b63a535a74eb6a2d": "7fc8de542f21d6d070675802de525571",
".git/objects/26/aeafc2762285ad08bb376563fdff76499de20e": "685b77a528f90d974f6771598a64fdc0",
".git/objects/27/85056a290162f8abe64e7a20c6e3a6bb412c7c": "415a8959ff765cf421f15ac6c0b346db",
".git/objects/28/a41e3e91e2d2d0a380be155fe75fc7433f0926": "eafdcf8566ddbcad701ba0eae83da45c",
".git/objects/2c/31af251e325f4e2a8edcf998824b2d14ab187f": "66ed4ed187829fcb5d7424450c1da871",
".git/objects/31/cad943b5221b634fcbe8617c6d889d5e72a0bf": "5d157f133103b6a23b36eba1fc928ea1",
".git/objects/36/f99fc5899bf82c7ab5a083bdbb4aa80b7f99af": "45c4610e795d9c5d7f3325a80a6fc2c1",
".git/objects/3f/d971c3c1e12c83c6b69e94b83a72695ff9b716": "d7cffa0b82a6fc5edbffdda76c355f2d",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/4c/ea88e26b61a54e6ec4677f666305b6939f798d": "94f184225fa852b338dd2fb7d401ec3a",
".git/objects/4f/b3cb7db8338c07b72166f2ac2e0af37b33f677": "2a41f9a207e81e46c40fbcff80c790d9",
".git/objects/50/8cb9b761fb400be6be4360821ba80d99f70737": "446ded55862d4f0d9eed5c984c540476",
".git/objects/51/991f71a08fb5374882b9e14595ab4856b3b8a9": "72c9867da3c63ff3feab170ec868faa0",
".git/objects/52/cfb77a424101413b81e246b965151f443a0e85": "453827b9337fef0116c048dee437d21d",
".git/objects/62/a01d6826913d9efa140d2e9f4bc0f13918e607": "44ba2af6a4f05cb190463143170ae010",
".git/objects/67/e7ae9602acd19f934712512770286d857d7b6b": "ec81c3caad86116034a3f257f0154450",
".git/objects/6f/34b8a38deccdf2bb5bf04357572cfdf76bc62f": "721c84c6d86bcaaba7f2e6ba0efbb9d0",
".git/objects/74/d11b7d5c224a695bf9b0160a64306907a77dba": "361cfe210043cb9fa6cd66f115ec34ab",
".git/objects/77/429c5a42db98b7a7e639d0931bc03dd3bd49ef": "1fa8bb120ad7eba2eb10d8ace048a724",
".git/objects/77/b8f5495e403e82fb0001a8f42d44221d28750e": "3a8dd0d775ae542d7357f8dacab362dc",
".git/objects/80/64949a9d9c9fb96be2d239bda650604112d118": "39cc489b305c1d261a7f78e99acd6099",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8c/5fdeabcdb1e77d337450bb176c89e98e65ae6f": "a66baee888be70916d0f87148a71cb2e",
".git/objects/8d/866ce9eeac1acff88b85c6a5e51de4c4a00099": "af1fd7b59fe56309b6f47a06e794c547",
".git/objects/8e/7f4b338840099949781ab85496d7a67fae46f1": "7f2803c236e9e7d95ef6ed16a3a2bd13",
".git/objects/90/544d2c834527a01626d6c3d35e441895fa85fa": "ebe0657dfbfee143441e9fce7e31f484",
".git/objects/9a/9c1e68a93c8a4e88d58d22b6be78e10603a4f5": "d42e96c06d86cfb8106cdad61223cfea",
".git/objects/a0/d32e0f55af045c709dccf587c605a3497200d2": "a55b7a950e0f28784516f875c8f65a6a",
".git/objects/a1/7b42fc561b28ea2802dbef26f692eee500f557": "0e6aeb82734e8455bb22f823f959e040",
".git/objects/aa/dcc815d3e16345bad4abaf80d03de56fd4e7cc": "6dde46c8461f3d52ee08597f2356e369",
".git/objects/ad/1f9fe8c4d48198cd03eea2b470fbf0f1ba7cd5": "d10a23f2bc69de248db5586b3e172ff0",
".git/objects/ae/37803d1933c3979fd1b939ff61cc667b0b70dc": "f5c08c98e82ebd9034dbd78b64a292fa",
".git/objects/b6/847af84668f859e670bc343cb1767c5f9fb9a1": "2b1c613b00e1262af4bd1c864593130b",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ba/1dfa7ef176999d85952f7cad2657b7ea2635d6": "9e1b4d1afd7c813683cce3387241cb0b",
".git/objects/ba/21d608a2675eeb92a1a170b8ea4188cbae0ffc": "9e54a5e6adc5896907d109ccb1ddcfc0",
".git/objects/bf/8e372c08239e998ad3886145926ccd1270558f": "fd77041fa4b3f8e476680fb3b545958d",
".git/objects/d0/18167fe1387a684fb728b85690316654ec8915": "a795df858e791a4a7e09bc452c14e2e0",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/e1/6ccb45089f381aedd61c8bbb92a2e4ef905b66": "257b0add3ec836b6d1f1c12cb8c120c3",
".git/objects/e4/e42964aa05a809e316f692dcd77f960bbe5535": "0669a0a99784a53eed4fd5cea308c514",
".git/objects/e7/5e920f175da53dd6f04d858636baa25dc702f4": "0fd694d0b7477cee41611e70d0cd6732",
".git/objects/e9/a6d91623b6e8aed90b6da76677c25b0f10b76c": "e23377af41e210c63b36558d25e5542b",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f4/fe124bd8e0e73aaf734ea724915c68ab4b3c0e": "9ebcf564be1a24399347c50216c29085",
".git/ORIG_HEAD": "d3d0c45c75576d59f940fc566d023d94",
".git/packed-refs": "a891e6bb26eb0d480aef486a7e8ea166",
".git/refs/heads/master": "daf0ea839bdf14d173e4efe59ff12523",
".git/refs/remotes/origin/HEAD": "73a00957034783b7b5c8294c54cd3e12",
".git/refs/remotes/origin/master": "568727641e3dbcb1cc27087a4757e505",
"assets/AssetManifest.bin": "a3d922a0b0bb96200631d1d9f758ce7d",
"assets/AssetManifest.json": "2efbb41d7877d10aac9d091f58ccd7b9",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "7027abfede8daca0f281c21dc6970d0f",
"assets/NOTICES": "19817499e6eda7cf5722a0716497c583",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "57f2f020e63be0dd85efafc7b7b25d80",
"canvaskit/canvaskit.js": "08f22b1287f0ff8b17ee37e8eac578ad",
"canvaskit/canvaskit.wasm": "e372502ef8ecc61c9d95828a96c35f3f",
"canvaskit/chromium/canvaskit.js": "94345e0f53b39690825826118925a7a8",
"canvaskit/chromium/canvaskit.wasm": "1beea20b91d23a5fa36944c5ea17238b",
"canvaskit/skwasm.js": "274d4ff9c575cdafbb3d8879a9f81355",
"canvaskit/skwasm.wasm": "3c14cade026d403e16677a9121a8dc02",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "c9bca6d358edb2dddf92236d27b00009",
"/": "c9bca6d358edb2dddf92236d27b00009",
"main.dart.js": "8e0c95517cf488596c3bb59ce7c167ec",
"manifest.json": "9b62272e1dc784f061b813c85c2e7d9b",
"README.md": "ba9f30669e1a7d44ce70670952f4cdfb",
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
