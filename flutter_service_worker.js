'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "931ab87864a64b54df252881a033f604",
".git/config": "002abbd9e906a3ee950c404f2a0d519e",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "a5e1e34224c6442e77565c5ba4ef1a68",
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
".git/index": "afd502edba3623d06611c12d3c0761b0",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "af5998027c99172e220e37cfa3f98bd8",
".git/logs/refs/heads/master": "af5998027c99172e220e37cfa3f98bd8",
".git/logs/refs/remotes/origin/HEAD": "599203d98d2e2671dbd9fc6216c90972",
".git/logs/refs/remotes/origin/master": "c19af5b3fed6ec6fecd6b3e251e76bc2",
".git/objects/01/64f65fe9e95874c31fcb73230ea07fb0e10a40": "916b7f686a6cb243a0475e91f5410469",
".git/objects/23/8487e434e32b6b7411788363479a402fe94daa": "8825779223b339df83facc7a887545b7",
".git/objects/27/8a305ac86c3372fd4f97322ca67edc5d3b345c": "834062f39b7d95ae22a7c46ffbdeb9e2",
".git/objects/2a/0d7f2eb144ae05aa537d35464862be6e05bf73": "1e4300e759b3989cc485e4c1c160f4ac",
".git/objects/34/8371c3e63cb78c45e95075e8c50f05e80070c5": "ed0bdbadd096a4f668ce8bdd6db017e8",
".git/objects/37/d5b3b46dfe2a25a86d4c8bb573b30f0a1c68bf": "0d1da091e366ca5eda6140e33831cbdc",
".git/objects/44/b696e5c778547741e89b927cb34be83363c47f": "713480e29c2d7608cb72296e21136c2f",
".git/objects/5d/14d90543edaf072497541c303d50bc044aae3d": "b7e6a76e38365fc0e9f7a5a73cd088f9",
".git/objects/68/978f18dbb096de46dd7e240f7501d3f5ec680d": "f20e44ca26d59b286de965d82a601c16",
".git/objects/77/781566ea9ef9543cbbdd8d3b1b862b46f7c960": "19b704f2455e4712b347f008534fbbf7",
".git/objects/80/ce1698c49cb688779060c7e4533533678b534a": "6e2a60b1c6376e61512c37c22c1de0ed",
".git/objects/95/4dce71dfed8bec47dd4d8d65be03163e0ffe8f": "f031c7adfffa5162c87db3acb1e1604e",
".git/objects/9e/1751e439cd417f5ac6a66d46530ead78f26466": "ae0d32650c764bbe5a272a18e6796e2c",
".git/objects/b7/2ddaea6f364d9fc31fd56088df58ccd462d74e": "a972c5a13b2b31e1d3ef462ad0b23cf2",
".git/objects/c3/5a1e5b413323ea4557f64b39d81118c38c3fbd": "b0e1c34942e639e1ca831cf7c4370de2",
".git/objects/fa/594f29169635e7bf3e903fc7520b3f0d64669d": "5965f535325772c3f39ae1cf045b535e",
".git/objects/pack/pack-619fad0a2c13bea8a951ad76008fcfdbe3c5ec96.idx": "3a2a99880f5a04c4d03c5144c59b7c41",
".git/objects/pack/pack-619fad0a2c13bea8a951ad76008fcfdbe3c5ec96.pack": "a88d463b485cd1c02c3885d0daf21de1",
".git/packed-refs": "e329a5c0f575e47d199dd83153edfaaf",
".git/refs/heads/master": "670ecb9f98b7875c8c0279fff425cd49",
".git/refs/remotes/origin/HEAD": "73a00957034783b7b5c8294c54cd3e12",
".git/refs/remotes/origin/master": "670ecb9f98b7875c8c0279fff425cd49",
"assets/AssetManifest.bin": "62104c82637a2bb4c8643cc503421ef9",
"assets/AssetManifest.json": "16755a1e2b2b8533f65f01656d88f0bd",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "784e485199dc3cbd278ff92bccd81dad",
"assets/NOTICES": "80aaa10d472acf93bf79f94bbcfdd3fa",
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
"index.html": "3a72017b011f5bcab0e118e22d6b7e78",
"/": "3a72017b011f5bcab0e118e22d6b7e78",
"main.dart.js": "7c60ad2f582c1ecc4fb0b358b9ac88c8",
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
