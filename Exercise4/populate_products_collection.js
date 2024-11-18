/* Documents are declared and added to an array(Documents Array) and  added to the Products collection in the Product_Catalogue database.
*/


db.Products.insertMany([
    {
      "_id": "prod_elec_001",
      "type": "electronics",
      "name": "Smartphone X",
      "category": "Mobile Phones",
      "brand": "TechBrand",
      "price": 799.99,
      "specifications": {
        "processor": "Octa-core 3.2GHz",
        "RAM": "8GB",
        "storage": "128GB",
        "battery": "4500mAh",
        "screen_size": "6.5 inches",
        "OS": "Android 12"
      }
    },
    {
      "_id": "prod_elec_002",
      "type": "electronics",
      "name": "4K Ultra HD TV",
      "category": "Televisions",
      "brand": "ViewMax",
      "price": 1199.99,
      "specifications": {
        "screen_size": "55 inches",
        "resolution": "3840 x 2160",
        "HDR": true,
        "refresh_rate": "120Hz",
        "ports": {
          "HDMI": 4,
          "USB": 2
        }
      }
    },
    {
      "_id": "prod_elec_003",
      "type": "electronics",
      "name": "Wireless Earbuds Pro",
      "category": "Audio Devices",
      "brand": "SoundSphere",
      "price": 149.99,
      "specifications": {
        "battery_life": "30 hours",
        "noise_cancellation": true,
        "connectivity": "Bluetooth 5.2",
        "charging_case": "USB-C",
        "water_resistance": "IPX7"
      }
    },
    {
      "_id": "prod_cloth_001",
      "type": "clothing",
      "name": "Cotton T-Shirt",
      "category": "Men's Wear",
      "size": "M",
      "color": "Blue",
      "material": "100% Cotton",
      "price": 19.99
    },
    {
      "_id": "prod_cloth_002",
      "type": "clothing",
      "name": "Summer Dress",
      "category": "Women's Wear",
      "size": "L",
      "color": "Red",
      "material": "Silk",
      "price": 49.99
    },
    {
      "_id": "prod_cloth_003",
      "type": "clothing",
      "name": "Winter Jacket",
      "category": "Outerwear",
      "size": "XL",
      "color": "Black",
      "material": "Wool",
      "price": 129.99
    },
    {
      "_id": "prod_book_001",
      "type": "book",
      "title": "The Great Adventure",
      "category": "Fiction",
      "author": "Jane Doe",
      "genre": "Adventure",
      "ISBN": "978-3-16-148410-0",
      "price": 14.99
    },
    {
      "_id": "prod_book_002",
      "type": "book",
      "title": "Advanced Algorithms",
      "category": "Technology",
      "author": "John Smith",
      "genre": "Educational",
      "ISBN": "978-1-23-456789-0",
      "price": 79.99
    },
    {
      "_id": "prod_book_003",
      "type": "book",
      "title": "Cooking for Beginners",
      "category": "Cooking",
      "author": "Emily Baker",
      "genre": "Cookbook",
      "ISBN": "978-0-98-765432-1",
      "price": 24.99
    }
  ]);
  