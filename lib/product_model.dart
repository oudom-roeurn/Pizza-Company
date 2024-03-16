class ProductModel {
  int? id;
  String? name;
  String? description;
  String? image;
  double? price;
  int? qty;
  bool? isFavorite;
  ProductModel(
      {this.id,
      this.description,
      this.image,
      this.name,
      this.isFavorite,
      this.price,
      this.qty});
}

List<ProductModel> listProduct = [
  ProductModel(
      id: 1,
      name: 'Dounut',
      description:
          'Doughnut, a small ring of sweet leavened dough that has been fried or sometimes baked.',
      image:
          'https://loveincorporated.blob.core.windows.net/contentimages/gallery/859b5eb2-3030-46d8-9c6f-b16914e14669-us_favourite_foods_doughnuts.jpg',
      isFavorite: false,
      price: 1.20,
      qty: 2),
  ProductModel(
      id: 2,
      name: 'Berger',
      description:
          'A burger is a patty of ground beef grilled and placed between two halves of a bun.',
      image:
          'https://loveincorporated.blob.core.windows.net/contentimages/gallery/e6980c61-d073-4b72-a958-72ce062b59ce-us_favourite_foods_burger.jpg',
      isFavorite: false,
      price: 2.30,
      qty: 2),
  ProductModel(
      id: 3,
      name: 'Pizza',
      description:
          "This pepperoni pizza recipe produces a quick and easy classic! Delicious homemade pizza crust and tomato sauce have never been easier.",
      image:
          'https://loveincorporated.blob.core.windows.net/contentimages/gallery/fd8cd0a6-b4e9-419c-baf1-c1591e7818eb-us_favourite_foods_pizza.jpg',
      isFavorite: false,
      price: 10.50,
      qty: 2),
  ProductModel(
      id: 4,
      name: 'Tacos',
      description:
          'taco, an internationally popular hand-sized food item of Mexican origin combining seasoned meat, vegetables, and other fillings and served inside a folded or rolled corn or flour tortilla.',
      image:
          'https://loveincorporated.blob.core.windows.net/contentimages/gallery/b70e5073-18f4-4af7-bbf5-37000be6bb48-us_favourite_foods_tacos.jpg',
      isFavorite: false,
      price: 4.50,
      qty: 2),
  ProductModel(
      id: 5,
      name: 'Frice',
      description:
          'Fried rice is a dish of cooked rice that has been stir-fried in a wok or a frying pan and is usually mixed with other ingredients such as eggs, vegetables, seafood, or meat',
      image:
          'https://loveincorporated.blob.core.windows.net/contentimages/gallery/943e0aca-e2cc-496b-b877-02920f49e859-us_favourite_foods_fries.jpg',
      isFavorite: false,
      price: 1.50,
      qty: 2),
  ProductModel(
      id: 5,
      name: 'Meatball',
      description: 'abc',
      image:
          'https://loveincorporated.blob.core.windows.net/contentimages/gallery/673cd366-137a-4209-b20a-d2aedf793b6c-us_favourite_foods_spag_meatballs.jpg',
      isFavorite: false,
      price: 5.00,
      qty: 2),
  ProductModel(
      id: 6,
      name: 'Cookies',
      description: 'abc',
      image:
          'https://loveincorporated.blob.core.windows.net/contentimages/gallery/baddf4f2-a4da-48fa-8486-b3dbbd27425f-us_favourite_foods_cookies.jpg',
      isFavorite: false,
      price: 2.30,
      qty: 2),
  ProductModel(
      id: 7,
      name: 'Hotdog',
      description: 'abc',
      image:
          'https://loveincorporated.blob.core.windows.net/contentimages/gallery/dd122e8f-cae7-4add-8054-0ded670a616c-us_favourite_foods_hot_dogs.jpg',
      isFavorite: false,
      price: 2.50,
      qty: 2),
  ProductModel(
      id: 8,
      name: 'Tots',
      description: 'abc',
      image:
          'https://loveincorporated.blob.core.windows.net/contentimages/gallery/bb298631-e747-4388-bd09-c190b19e163b-us_favourite_foods_tater_tots.jpg',
      isFavorite: false,
      price: 1.20,
      qty: 2),
  ProductModel(
      id: 9,
      name: 'ApplePie',
      description: 'abc',
      image:
          'https://loveincorporated.blob.core.windows.net/contentimages/gallery/50b6cd43-336a-4c2d-8a08-518e07571aff-us_favourite_foods_apple_pie.jpg',
      isFavorite: false,
      price: 5.60,
      qty: 2),
  ProductModel(
      id: 10,
      name: 'Creaker',
      description: 'abc',
      image:
          'https://loveincorporated.blob.core.windows.net/contentimages/gallery/b723c099-8343-4a2a-9bf9-264d54c7b722-us_favourite_foods_crackers.jpg',
      isFavorite: false,
      price: 1.30,
      qty: 2),
  ProductModel(
      id: 11,
      name: 'Tortillas',
      description: 'abc',
      image:
          'https://loveincorporated.blob.core.windows.net/contentimages/gallery/f33e4f25-a0bc-4b6c-94f9-b6c652ad05c6-us_favourite_foods_tortillas.jpg',
      isFavorite: false,
      price: 9.5,
      qty: 2),
  ProductModel(
      id: 12,
      name: 'Bagels',
      description: 'abc',
      image:
          'https://loveincorporated.blob.core.windows.net/contentimages/gallery/03792432-1b0a-4c10-b90c-2061ce51996c-us_favourite_foods_bagels.jpg',
      isFavorite: false,
      price: 2.30,
      qty: 2),
  ProductModel(
      id: 13,
      name: 'Sushi',
      description: 'abc',
      image:
          'https://loveincorporated.blob.core.windows.net/contentimages/gallery/68c1cdeb-21c9-4f2f-94de-3fe17c29d174-us_favourite_foods_sushi.jpg',
      isFavorite: false,
      price: 6.70,
      qty: 2),
];
List<ProductModel> cardlist = [];
