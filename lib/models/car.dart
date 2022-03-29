class Car {
  final String transmission, color, mileage, title, brand, image, price;
  Car({
      required this.image,
      required this.title,
      required this.brand,
      required this.price,
      required this.transmission,
      required this.color,
      required this.mileage,
    });
}

List<Car> cars = [
  Car(
    image: "assets/images/Mercedes_Benz_S550_2021.png",
    title: "Mercedes Benz S550",
    brand: "Luxury Sedan - 2018",
    price: "Rp. 4.000.000,-/day",
    transmission: "AT",
    color: "Black",
    mileage: "983 km"
  ),
  Car(
    image: "assets/images/Rolls Royce Wraith.png",
    title: "Rolls Royce Wraith",
    brand: "Luxury Sedan - 2017",
    price: "Rp. 7.200.000,-/day",
    transmission: "AT",
    color: "Dark Grey",
    mileage: "483 km"
  ),
  Car(
    image: "assets/images/Suzuki All New Ertiga SS.png",
    title: "Suzuki All New Ertiga SS",
    brand: "LMPV - 2022",
    price: "Rp. 450.000,-/day",
    transmission: "AT",
    color: "Magma Grey",
    mileage: "2.702 km"
  ),
];