'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/config": "43ceab0fd444132d37dddc9a887294c2",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "b3aa270a58f0f765403e1ea10fa04c7f",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "4ace651d9c693e87c6d046b04b292c9f",
".git/logs/refs/heads/master": "4ace651d9c693e87c6d046b04b292c9f",
".git/logs/refs/remotes/origin/HEAD": "4ace651d9c693e87c6d046b04b292c9f",
".git/objects/pack/pack-9b4cf1aed75b2e5b8ba6aed6fbf38824d9fd41e8.idx": "ff82150f48e633ea55a4dec60175071b",
".git/objects/pack/pack-9b4cf1aed75b2e5b8ba6aed6fbf38824d9fd41e8.pack": "e52b2441100a18c778cb72dfde276b90",
".git/objects/pack/pack-9b4cf1aed75b2e5b8ba6aed6fbf38824d9fd41e8.rev": "a720d01e7ef26176bad71ec31d974932",
".git/packed-refs": "d9b45bcb2846c061a862329b290ae0ba",
".git/refs/heads/master": "3c72450944db172b744031f94a4a82f1",
".git/refs/remotes/origin/HEAD": "73a00957034783b7b5c8294c54cd3e12",
"assets/AssetManifest.bin": "a4b67211e676f7329bf0d3c4d41cb628",
"assets/AssetManifest.bin.json": "72a65283cd09f016dfd5c5f78508c6e6",
"assets/AssetManifest.json": "683c9485adfa17145a028934bd53d5c0",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "066eb6051da2641f9dbe35b373400908",
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
"assets/NOTICES": "7bee4631a55eee95590b25d3c3a60d0e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/timezone/data/latest_all.tzf": "d34414858d4bd4de35c0ef5d94f1d089",
"assets/packages/window_manager/images/ic_chrome_close.png": "75f4b8ab3608a05461a31fc18d6b47c2",
"assets/packages/window_manager/images/ic_chrome_maximize.png": "af7499d7657c8b69d23b85156b60298c",
"assets/packages/window_manager/images/ic_chrome_minimize.png": "4282cd84cb36edf2efb950ad9269ca62",
"assets/packages/window_manager/images/ic_chrome_unmaximize.png": "4a90c1909cb74e8f0d35794e2f61d8bf",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "5fda3f1af7d6433d53b24083e2219fa0",
"canvaskit/canvaskit.js.symbols": "07c19b69fa5f53224712e8471c00344d",
"canvaskit/canvaskit.wasm": "f312edac4fb4c74852dc1a4f069ab100",
"canvaskit/chromium/canvaskit.js": "87325e67bf77a9b483250e1fb1b54677",
"canvaskit/chromium/canvaskit.js.symbols": "100d192729121969872b80009e47a5b7",
"canvaskit/chromium/canvaskit.wasm": "f9074e52c7e9c770f1130c6ed9e2677f",
"canvaskit/skwasm.js": "f17a293d422e2c0b3a04962e68236cc2",
"canvaskit/skwasm.js.symbols": "ab140650f4d351b74f4e6bca3e8dd0e0",
"canvaskit/skwasm.wasm": "7fe5c39ff8466de52fbb0c66473abbe3",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "ecbd0269ab483bb5ea731383514981ae",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "3a64a830a20d83d89391d9766c16f27f",
"/": "3a64a830a20d83d89391d9766c16f27f",
"main.dart.js": "044894cb12f82008aff889199cfb9d3d",
"manifest.json": "9b62272e1dc784f061b813c85c2e7d9b",
"README.md": "bd23c85a235f32d54287c99929e719b5",
"version.json": "2ce216e5fc3f1dc43c19966d6125b7d4"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
