'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "c39ce65838e0b47108d258da4b382b6e",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "a68d2a28c526b3b070aefca4bac93d25",
"assets/images/BIODATA.pdf": "0098a2c4f561807c9f0064ccb22dd185",
"assets/images/deedy_resume.pdf": "7abb4d1961631143d23600178b3cb8f5",
"assets/images/pic1.jpeg": "5e3963c6d9fb5aeb1010b0be0ade1d1b",
"assets/images/pic10.jpg": "0f74bfb784b1c3eaaf91ec15565fcab0",
"assets/images/pic101.png": "b59e2786502af681c63fe40df3a95bb4",
"assets/images/pic102.gif": "d82b01bb604c76277d80210479534f37",
"assets/images/pic103.png": "2c1cbd2b93277be79225e74638b6a6d3",
"assets/images/pic104.png": "fed0d69678a987180c5f88908bc0d978",
"assets/images/pic105.png": "6271ab84d2f8de2a9e7af594fb20d512",
"assets/images/pic106.png": "10e44a61e58e68667bee1ad1e1ade7e9",
"assets/images/pic107.jfif": "a20876a9adbf141c66610b7852422e8a",
"assets/images/pic108.jfif": "ccd28b4c096d1977d027f14708e0e7a7",
"assets/images/pic109.jfif": "0631080de0efd9d3fc49852662e783cc",
"assets/images/pic11.jpg": "d0d22e30d448edee854c15e7c625f644",
"assets/images/pic110.jfif": "886435a9874555d371649e0bddf26eff",
"assets/images/pic111.gif": "47c69372fd9d1a5baa5203c4a8b56fba",
"assets/images/pic112.jfif": "fdf64ddd6b3459eca1afc9bc5902e270",
"assets/images/pic113.jfif": "2befdab3740fa4cbe2de3dc7a798a49f",
"assets/images/pic114.png": "7a599b65bbbabc1696df4d93637edd64",
"assets/images/pic115.png": "a3d0ed339251ea7cd1df6999f2e14555",
"assets/images/pic116.jfif": "fef16bfc930bbb9e3eb2553ed1da8b6c",
"assets/images/pic117.png": "de2e09542e3f2abe622b19ca7c5a6502",
"assets/images/pic118.jpeg": "411d95f86ab961c3f4222f9d94e0e78b",
"assets/images/pic119.jpeg": "fa6d18c87c115b5692ba16240f394372",
"assets/images/pic120.png": "c49a9eab4eb61b352807f101513b3cfe",
"assets/images/pic121.png": "3b5f797ac7ad927e3756477b6736aca3",
"assets/images/pic2.jpg": "33b2c35edcfe278431abc35dcce72445",
"assets/images/pic3.png": "8d3fa858393337ed94f6ece448582609",
"assets/images/pic4.jpg": "520d04393a3af2d1c48e03175d44776d",
"assets/images/pic5.jpg": "9fddf0b1cabc05a2e3f21b11026ba67d",
"assets/images/pic501.png": "7ff3cf413bab77afb7a87d418efc8340",
"assets/images/pic506.png": "e749d535e1338d33e71c603cfbb81273",
"assets/images/pic6.jpg": "0f3075c70e6a46f004fdd3bf2b2e9ef7",
"assets/images/pic7.jpg": "9d508b548e7bb7e6cedd20f0c3a558d2",
"assets/images/pic8.jpg": "032cd798bb1ba2155c824c5da67e0e35",
"assets/images/pic9.jpg": "3162b8de7b80a51ed1459c87d6e25a13",
"assets/NOTICES": "194789d5482b39f779dce5b6780bddc1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "39a824445f59e93fc674882b0d161332",
"/": "39a824445f59e93fc674882b0d161332",
"main.dart.js": "085173f2e15c1292f8d861ecf4dd24e1",
"manifest.json": "b8d1f180185c438d473dc57b6b861dc1",
"version.json": "899e23a26fc3de6f9e2fd02ba0c9d9f8"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
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
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
    skipWaiting();
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
  for (var resourceKey in Object.keys(RESOURCES)) {
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

function skipWaiting() {
  if (self.skipWaiting != undefined) {
    self.skipWaiting();
  }
}
