const items = {
  "sunglass": {
    "id": "sunglass",
    "name": "Sunglass",
    "price": 100,
    "image": "assets/sunglasses.png",
    "description": "Sunglass description",
    "ar": "assets/Sunglass.deepar",
    "glb": "assets/rayban_sunglasses.glb"
  },
  "shoe": {
    "id": "shoe",
    "name": "Shoes",
    "price": 10,
    "image": "assets/shoes.png",
    "description": "Shoes description",
    "ar": "assets/Sunglass.deepar",
    "glb": "assets/shoe.glb"
  },
  "helmet": {
    "id": "helmet",
    "name": "Helmet",
    "price": 10,
    "image": "assets/helmet.png",
    "description": "Viking Helmet description",
    "ar": "assets/helmet.deepar",
    "glb": "assets/helmet.glb"
  },
};

List getItems() {
  const arr = [];
  var keys = items.keys;
  for (var key in keys) {
    arr.add(items[key]);
  }
  return arr;
}

Map<String, Object>? getItem(id) {
  return items[id];
}