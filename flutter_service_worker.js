'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "8983d907c37fb6ad5c132f69da02ece5",
"assets/assets/fonts/Arial.ttf": "5995c725ca5a13be62d3dc75c2fc59fc",
"assets/assets/fonts/Cairo-Regular.ttf": "8e62cfbb90ccadc00b59b977c93eb31a",
"assets/assets/graph1.png": "3d5ba974fd1f2a980e2b64ff07d4bff8",
"assets/assets/graph2.png": "27095be0ea0cf57ef66849cf00b678e7",
"assets/assets/l.png": "d74b4309926c85164f237e02fce35cb0",
"assets/assets/logo.png": "43c819a0babaf588ff7d7b333b61dffa",
"assets/assets/splash.png": "f7bc8af6e2af60792b4160dd56a15689",
"assets/FontManifest.json": "ec3fe6333cb655dd05ba898be1fd84b9",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/fonts/Montreal-Regular.ttf": "fcc878c1548624b121cfbf0eb2ad4256",
"assets/fonts/MYRIADPRO-REGULAR.OTF": "d75d7f70aa160104a45a743eae7a8a7e",
"assets/images/anonymous.png": "c200756614568bedaec670e45337398b",
"assets/images/cover.png": "208319f07568ba4ef98e1d078de80248",
"assets/images/icons/arrow.png": "68db0d125871944650a33e7e1d998cf2",
"assets/images/icons/box.png": "792bb0dd99a5c68a164703d8b1eba9fc",
"assets/images/icons/Convert.png": "6664a52e4229033edb7b0c1c21241962",
"assets/images/icons/credit.png": "01eb9b6bcd05d8cdfe1b124ee3745a0b",
"assets/images/icons/Deposit.png": "334b9d636633f5f1a75cc46d9b7a1222",
"assets/images/icons/eth.png": "12ee89bd092f7eb05b71cc50decbee53",
"assets/images/icons/facebook.png": "f907784683c9efb4fbccf5665463d87b",
"assets/images/icons/google.png": "a2229b88eeb7a5118f0a2c38b1862c58",
"assets/images/icons/Grid.png": "983c1982efdfc31442691e1c5f70a56f",
"assets/images/icons/launchpad.png": "2b0597eecfb4e29363a75ab71d094073",
"assets/images/icons/loan.png": "3f3ce6cf612c83f5a9fbc9c4dd9aa813",
"assets/images/icons/margin.png": "50889629b188628f61e576e1bdd4202b",
"assets/images/icons/more.png": "6d4ebf89d838f9da040f28e3c74e5a0e",
"assets/images/icons/notification.png": "39b6efb9bd5860b71ec35511f295d1c0",
"assets/images/icons/Orders.png": "e38c0a09c521338ea444357c7e0218e0",
"assets/images/icons/pay.png": "674b0daf2209f14613fe9892cb84f5b0",
"assets/images/icons/pool.png": "24bd64163f71204dad4a3b333eb2cd6a",
"assets/images/icons/referal.png": "f9ed905a9c49bbd42a2c6c3afdbaf38b",
"assets/images/icons/rocket.png": "40a8e50ef8aa08243e159a65863e2fd0",
"assets/images/icons/savings.png": "f6bd6dd71b8d3ee17a5a4fb7893d72a0",
"assets/images/icons/scanner.png": "44d395b46001ee874cdd0fde08f3abc1",
"assets/images/icons/search.png": "3eae75c8726d6d48fe0c12d0687f6ea9",
"assets/images/icons/Spot.png": "e6480822f89a630128cc24a18733f30b",
"assets/images/icons/staking.png": "ec3bd374f274cb765b089e4110e70914",
"assets/images/icons/swap.png": "9146ef72293c083921631aa8ad3e5cb6",
"assets/images/icons/Transfer.png": "7af15a9877f3743c92e06ce0c73c7106",
"assets/images/l.png": "d74b4309926c85164f237e02fce35cb0",
"assets/images/no_notifi.png": "e4da5234999871afa39f20381f3f9da9",
"assets/images/onboarding/on1.png": "afaf818d0821c33f755ec189f0f73c45",
"assets/images/onboarding/on2.png": "2c38a15bb5d29d24b04e7dc94f2b23f8",
"assets/images/onboarding/on3.png": "c976cfdb34ed99ad97253dd951c58b6e",
"assets/images/successful.png": "1a8798810f25a7e6067b4594e96fb4b9",
"assets/NOTICES": "9640f170860aace9db8d4aa3301e6445",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/fluent_ui/assets/AcrylicNoise.png": "81f27726c45346351eca125bd062e9a7",
"assets/packages/fluent_ui/fonts/FluentIcons.ttf": "1cd173aed13e298ab2663dd0924f6762",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "00bb2b684be61e89d1bc7d75dee30b58",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "4b6a9b7c20913279a3ad3dd9c96e155b",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "dffd9504fcb1894620fa41c700172994",
"assets/packages/rflutter_alert/assets/images/2.0x/close.png": "abaa692ee4fa94f76ad099a7a437bd4f",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_error.png": "2da9704815c606109493d8af19999a65",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_info.png": "612ea65413e042e3df408a8548cefe71",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_success.png": "7d6abdd1b85e78df76b2837996749a43",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_warning.png": "e4606e6910d7c48132912eb818e3a55f",
"assets/packages/rflutter_alert/assets/images/3.0x/close.png": "98d2de9ca72dc92b1c9a2835a7464a8c",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_error.png": "15ca57e31f94cadd75d8e2b2098239bd",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_info.png": "e68e8527c1eb78949351a6582469fe55",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_success.png": "1c04416085cc343b99d1544a723c7e62",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_warning.png": "e5f369189faa13e7586459afbe4ffab9",
"assets/packages/rflutter_alert/assets/images/close.png": "13c168d8841fcaba94ee91e8adc3617f",
"assets/packages/rflutter_alert/assets/images/icon_error.png": "f2b71a724964b51ac26239413e73f787",
"assets/packages/rflutter_alert/assets/images/icon_info.png": "3f71f68cae4d420cecbf996f37b0763c",
"assets/packages/rflutter_alert/assets/images/icon_success.png": "8bb472ce3c765f567aa3f28915c1a8f4",
"assets/packages/rflutter_alert/assets/images/icon_warning.png": "ccfc1396d29de3ac730da38a8ab20098",
"assets/packages/ternav_icons/fonts/TernavIconsBold.ttf": "0fb97d0a79ba0e141c228c8c202a5451",
"assets/packages/ternav_icons/fonts/TernavIconsLight.ttf": "3fe5f8d866e70b33b4cfcc4203d19066",
"assets/packages/ternav_icons/fonts/TernavIconsLightOutline.ttf": "29357d564e7997dbe71d1319097c43fb",
"assets/shaders/ink_sparkle.frag": "ae6c1fd6f6ee6ee952cde379095a8f3f",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "c5ec81aa1b0e6c0f2ba0d01a9e123042",
"/": "c5ec81aa1b0e6c0f2ba0d01a9e123042",
"main.dart.js": "f793a76a90d6f5d64fcdd7e374671451",
"manifest.json": "9f542eff47b805eafdf606eb9c8dd023",
"splash/img/dark-1x.png": "9c280e3dc81ea642104c446ccf16eb12",
"splash/img/dark-2x.png": "05c8b0588ab42a7851e47c7c29ddae83",
"splash/img/dark-3x.png": "258390bb745b5ee5d5a092775b55a1c3",
"splash/img/dark-4x.png": "16458db0ac1daddf292ba8b7fa4a5b31",
"splash/img/light-1x.png": "9c280e3dc81ea642104c446ccf16eb12",
"splash/img/light-2x.png": "05c8b0588ab42a7851e47c7c29ddae83",
"splash/img/light-3x.png": "258390bb745b5ee5d5a092775b55a1c3",
"splash/img/light-4x.png": "16458db0ac1daddf292ba8b7fa4a5b31",
"splash/img/light-background.png": "f7bc8af6e2af60792b4160dd56a15689",
"splash/splash.js": "123c400b58bea74c1305ca3ac966748d",
"splash/style.css": "d427ebd72d2bad5b78875c0824c1b0e6",
"version.json": "a178531bf46b271dbe26579dfff579d4"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
