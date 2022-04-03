class Clothing {
  String name;
  String imageAsset;
  int price;
  String description;
  String brand;
  num rating;

  Clothing({
    required this.name,
    required this.imageAsset,
    required this.price,
    required this.description,
    required this.brand,
    required this.rating,
  });
}

var clothingList = [
  Clothing(
    name: 'Light Weight Jacket',
    imageAsset: 'images/erigo.jpg',
    price: 120,
    description:
        "Light weight mengangkat corak mode 'Anorak Jacket'. Berbeda dengan 'Anorak Jacket' zaman dahulu yang diproduksi dari material kulit, Axelle Poseidon ini dibuat dari bahan nylon. Dengan kualitas tahan air dan cuaca panas yang sudah teruji, jaket yang juga masuk jenis pullover ini dilengkapi tudung beserta tali pengencangnya, resleting setengah badan serta saku di bagian depan.",
    brand: 'Erigo',
    rating: 4.3,
  ),
  Clothing(
    name: 'Denim Jacket',
    imageAsset: 'images/gucci.jpg',
    price: 28,
    description:
        'Bring your workspace to living room by placing a durable and slim desk to fit all size of space. Now you can finish your task while keeping up with their new stories. ',
    brand: 'Gucci',
    rating: 4.6,
  ),
  Clothing(
    name: 'Oversized hoodie',
    imageAsset: 'images/handm.jpg',
    price: 135,
    description:
        "Oversized zip-through hoodie in soft, printed sweatshirt fabric with a small print motif on the front decorated with sparkly studs and a large print motif on the back. Lined, drawstring hood, a zip down the front, front pockets and trims at the cuffs and hem. Soft brushed inside.",
    brand: 'H&M',
    rating: 4.8,
  ),
  Clothing(
    name: 'Cotton-Blend T-Shirt',
    imageAsset: 'images/hugo_boss.jpg',
    price: 168,
    description:
        " A crew-neck T-shirt by BOSS Menswear. Featuring a large BOSS logo in a graphic print across the chest, this short-sleeved T-shirt is cut to a straight fit in cotton-blend jersey. The side seam is trimmed with a branded flag for a signature sign-off.",
    brand: 'Hugo Boss',
    rating: 4.9,
  ),
  Clothing(
    name: 'Water-Repellent Jacket',
    imageAsset: 'images/polo.jpg',
    price: 268,
    description:
        "Constructed from a lightweight double-knit fabric, this track jacket features reflective signature graphics and concealed zippers for a sleek, modern appearance.",
    brand: 'RALPH LAUREN',
    rating: 4.7,
  ),
  Clothing(
    name: 'Cotton T-shirt',
    imageAsset: 'images/prada.jpg',
    price: 150,
    description:
        "This cotton t-shirt with classic cut is decorated with a motif that recalls sailor tattoos, featuring emblematic symbols of the marine world such as the anchor, wind rose, mermaid, and barracuda. Celebrating freedom and individuality, colors and styles are mixed to create a contemporary and composite collection that recalls archetypes of beach imagery.",
    brand: 'Prada',
    rating: 3.8,
  ),
  Clothing(
    name: 'Logo crewneck sweatshirt',
    imageAsset: 'images/supreme.jpg',
    price: 239,
    description:
        "When it comes to Supreme, expect logo-sprawled surfaces and streetwear-ready staples. A fine example is this stacked logo crewneck sweatshirt, crafted from white cotton and proudly displaying the brand's logo across the chest.",
    brand: 'Supreme',
    rating: 4.8,
  ),
  Clothing(
    name: 'Kemeja Extra Fine',
    imageAsset: 'images/uniqlo.jpg',
    price: 150,
    description:
        "Kemeja Pria dengan 100% fine cotton yang lembut dan nyaman. Cocok untuk gaya formal maupun kasual.",
    brand: 'UNIQLO',
    rating: 4.6,
  ),
];
