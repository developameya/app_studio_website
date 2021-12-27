'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "2e92366babb9b3d7c3e674fac0dcd380",
"index.html": "37b06c9a6a06f1a9f32ec9c47c97b004",
"/": "37b06c9a6a06f1a9f32ec9c47c97b004",
"main.dart.js": "c2ba2dfbc1fdb2da0930035f013b2f73",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "a0b3f74739030a9144ed80c4b8c59225",
"assets/AssetManifest.json": "be622862ec0f7e72088993d4d75705cc",
"assets/NOTICES": "919e1be6d28695570c2fc6680d1dfb6e",
"assets/FontManifest.json": "62d95c98704ff655b1f67567f55f3f29",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/assets/images/Icon_App_Studio-1@2x.jpg": "f92cb8fec0d00ea7ea8e93b1ab43092b",
"assets/assets/images/Icon%2520App%2520Store@2x.png": "d3eb8684b1f4351074dd22ae2f1beb84",
"assets/assets/images/2-app%2520store%2520screenshot@2x.png": "154e4d1a83761edda2f9d846485a33df",
"assets/assets/images/web/2-app%2520store%2520screenshot@2x.png": "154e4d1a83761edda2f9d846485a33df",
"assets/assets/images/web/4-app%2520store%2520screenshot@2x.png": "29311d106ce622297fa8d08c62173af1",
"assets/assets/images/web/1-app%2520store%2520screenshot@2x.png": "8fb1af67bd0453e56e7842eba1244390",
"assets/assets/images/web/3-app%2520store%2520screenshot@2x.png": "0da80a65bddaff49711ba7c9a1c698ac",
"assets/assets/images/4-app%2520store%2520screenshot@2x.png": "29311d106ce622297fa8d08c62173af1",
"assets/assets/images/1-app%2520store%2520screenshot@2x.png": "8fb1af67bd0453e56e7842eba1244390",
"assets/assets/images/circle_and_dots.png": "3ec8bed26cd62006972994f46c7fd049",
"assets/assets/images/Icon_App_Studio@2x.png": "18e845a125ff1ded7c221bbecf74f389",
"assets/assets/images/iPhone%2520hero%2520image.png": "fd847909792e40580299453c46d12c24",
"assets/assets/images/3-app%2520store%2520screenshot@2x.png": "0da80a65bddaff49711ba7c9a1c698ac",
"assets/assets/images/pencil.png": "31aac80bb2141dee07990fa843660457",
"assets/assets/images/Trash.png": "e66e64fa16a17bc8e2a86f211c82770d",
"assets/assets/images/square_and_pencil.png": "877d6a3b4f3b6ad6639747af5c7b0804",
"assets/assets/fonts/Montserrat-Medium.ttf": "c8b6e083af3f94009801989c3739425e",
"assets/assets/fonts/Montserrat-Light.ttf": "409c7f79a42e56c785f50ed37535f0be",
"assets/assets/fonts/Montserrat-ThinItalic.ttf": "3c2b290f95cd5b33c3ead2911064a2ab",
"assets/assets/fonts/Montserrat-Thin.ttf": "43dd5b7a3d277362d5e801e5353e3a01",
"assets/assets/fonts/Raleway-Regular.ttf": "75b4247fdd3b97d0e3b8e07b115673c2",
"assets/assets/fonts/Montserrat-MediumItalic.ttf": "40a74702035bf9ef19053c84ce9a58b9"
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
