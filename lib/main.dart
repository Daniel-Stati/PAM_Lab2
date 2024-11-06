import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        body: const NotificationScreen(),
      ),
    );
  }
}
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}
class _NotificationScreenState extends State<NotificationScreen> {
  bool _showRecommendations = false;
  bool _showAddresses = false;
  String _selectedAddress = '14 Donnerville Street, England';
  List<bool> _isSelected = [true, false, false, false];
  OverlayEntry? _overlayEntry;
  bool _showNotificationBadge = true;
  List<Wine> wines = [];
  @override
  void initState() {
    super.initState();
    wines = [
      // Red Wines
      Wine(
        name: "Cabernet Sauvignon",
        type: "Red",
        country: "France",
        imageUrl: "https://luigibosca.com/wp-content/uploads/2022/12/Entendiendo-al-Cabernet-Sauvignon-1.jpg",
        price: 19.99,
        rating: 5,
        volume: 750,
      ),
      Wine(
        name: "Merlot",
        type: "Red",
        country: "France",
        imageUrl: "https://fratelliwines.in/cdn/shop/products/classic1.jpg?v=1657956216",
        price: 12.99,
        rating: 4.2,
        volume: 850,
      ),
      Wine(
        name: "Pinot Noir",
        type: "Red",
        country: "France",
        imageUrl: "https://sansushi.md/wp-content/uploads/2022/09/33de73e9-2004-464a-9b18-8378ff7f5af8.jpg",
        price: 25.99,
        rating: 4.9,
        volume: 750,
      ),

      // White Wines
      Wine(
        name: "Chardonnay",
        type: "White",
        country: "Italy",
        imageUrl: "https://alcomarket.md/public/products/thumbs/items-11045-3822.png",
        price: 18.99,
        rating: 4.5,
        volume: 750,
      ),
      Wine(
        name: "Sauvignon Blanc",
        type: "White",
        country: "France",
        imageUrl: "https://www.15bodegas.com/media/catalog/product/b/o/bot-legaris-sauvignon-blanc.jpg",
        price: 21.50,
        rating: 4.3,
        volume: 750,
      ),
      Wine(
        name: "Pinot Grigio",
        type: "White",
        country: "Moldova",
        imageUrl: "https://sansushi.md/wp-content/uploads/2024/01/3eb220c9-1442-413d-b04f-7a89a8925496.jpg",
        price: 14.50,
        rating: 4.1,
        volume: 750,
      ),

      // Rosé Wines
      Wine(
        name: "Provence Rosé",
        type: "Rosé",
        country: "France",
        imageUrl: "https://www.coolhurstvineyards.com/wp-content/uploads/2019/04/Coolhurst-Shop-17.png",
        price: 22.00,
        rating: 4.6,
        volume: 750,
      ),
      Wine(
        name: "White Zinfandel",
        type: "Rosé",
        country: "Italy",
        imageUrl: "https://cdn.vin.co/_clients_folder/perrin/Rose_Cotes_de_Provence_750_ML_MIPRVS_1630675227_640.png",
        price: 15.50,
        rating: 4.0,
        volume: 750,
      ),
      Wine(
        name: "Grenache Rosé",
        type: "Rosé",
        country: "Moldova",
        imageUrl: "https://figuiere-provence.com/wp-content/uploads/2024/07/Conf-rose-0.png",
        price: 20.99,
        rating: 4.4,
        volume: 750,
      ),

      // Dry Wines
      Wine(
        name: "Dry Riesling",
        type: "Dry",
        country: "France",
        imageUrl: "https://www.shutterstock.com/image-photo/bottle-glass-red-wine-on-600nw-2348479171.jpg",
        price: 16.50,
        rating: 4.2,
        volume: 750,
      ),
      Wine(
        name: "Gruner Veltliner",
        type: "Dry",
        country: "Italy",
        imageUrl: "https://thumbs.dreamstime.com/b/zeni-bardolino-red-dry-wine-bottle-closeup-kyiv-ukraine-april-studio-shoot-italian-against-white-background-319448930.jpg",
        price: 19.99,
        rating: 4.3,
        volume: 750,
      ),
      Wine(
        name: "Sancerre",
        type: "Dry",
        country: "Moldova",
        imageUrl: "https://foodhouse.md/files/styles/main_image/public/product/aac56657cd814ef8a0261375dfab67cc.jpg",
        price: 24.99,
        rating: 4.5,
        volume: 750,
      ),

      // Sweet Wines
      Wine(
        name: "Moscato",
        type: "Sweet",
        country: "Italy",
        imageUrl: "https://w7.pngwing.com/pngs/42/926/png-transparent-red-wine-rose-wine-cocktail-dessert-wine-rose-glass-wine-glass-wine.png",
        price: 12.99,
        rating: 4.1,
        volume: 750,
      ),
      Wine(
        name: "Sauternes",
        type: "Sweet",
        country: "France",
        imageUrl: "https://e7.pngegg.com/pngimages/730/940/png-clipart-cabernet-sauvignon-merlot-red-wine-sauvignon-blanc-wine-wine-dessert-wine.png",
        price: 29.99,
        rating: 4.7,
        volume: 750,
      ),
      Wine(
        name: "Tokaji",
        type: "Sweet",
        country: "Moldova",
        imageUrl: "https://kwv.co.za/wp-content/uploads/2021/09/CLA-Red-Muscadel.png",
        price: 27.50,
        rating: 4.6,
        volume: 750,
      ),

      // France Wines
      Wine(
        name: "Chablis",
        type: "France",
        country: "France",
        imageUrl: "https://e7.pngegg.com/pngimages/10/498/png-clipart-saint-emilion-wine-chateau-bourgneuf-cabernet-sauvignon-fronsac-wine-france-wine.png",
        price: 28.00,
        rating: 4.8,
        volume: 750,
      ),
      Wine(
        name: "Bordeaux Blend",
        type: "France",
        country: "France",
        imageUrl: "https://toppng.com/uploads/preview/france-clipart-french-wine-bottle-of-wine-clipart-11563266087auz1h2wt7p.png",
        price: 35.99,
        rating: 5.0,
        volume: 750,
      ),
      Wine(
        name: "Côtes du Rhône",
        type: "France",
        country: "France",
        imageUrl: "https://wineconnection.com.sg/media/catalog/product/cache/3e2bbaf775fd7489474b010c6ab9956f/b/o/bo167-14_ch_teau_lynch_bages_-_pauillac_-_bordeaux_-_france_grand_cru_class_.png",
        price: 22.50,
        rating: 4.5,
        volume: 750,
      ),

      // Italy Wines
      Wine(
        name: "Chianti",
        type: "Italy",
        country: "Italy",
        imageUrl: "https://m.media-amazon.com/images/S/assets.wholefoodsmarket.com//content/26/f1/71444ac44d63855df9caeef99d9a/23-mar-italianwine-article-casaedimirafiore._TTW_._CR0,0,660,660_._SR580,580_._QL100_.jpg",
        price: 19.50,
        rating: 4.3,
        volume: 750,
      ),
      Wine(
        name: "Barolo",
        type: "Italy",
        country: "Italy",
        imageUrl: "https://media.winefolly.com/barbaresco-nebbiolo-wine.jpg",
        price: 40.00,
        rating: 4.9,
        volume: 750,
      ),
      Wine(
        name: "Prosecco",
        type: "Italy",
        country: "Italy",
        imageUrl: "https://cdn.cluboenologique.com/wp-content/uploads/2021/08/12135032/italian-fine-wine-collection-e1628238679238.jpg",
        price: 15.00,
        rating: 4.2,
        volume: 750,
      ),

      // Moldova Wines
      Wine(
        name: "Câmpia Moldovei",
        type: "Moldova",
        country: "Moldova",
        imageUrl: "https://43oz.com/wp-content/uploads/2020/04/02-1.jpg",
        price: 12.99,
        rating: 4.4,
        volume: 750,
      ),
      Wine(
        name: "Rădăcini",
        type: "Moldova",
        country: "Moldova",
        imageUrl: "https://upload.wikimedia.org/wikipedia/commons/b/b7/White_wine_of_Cabernet_Sauvignion_from_Moldova.jpg",
        price: 14.99,
        rating: 4.5,
        volume: 750,
      ),
      Wine(
        name: "Rosu de Purcari",
        type: "Moldova",
        country: "Moldova",
        imageUrl: "https://www.exoticwinetravel.com/wp-content/uploads/2019/07/Chateau-Purcari-icewine-muscat-ottonel-traminer-900x1200.jpg",
        price: 20.00,
        rating: 4.7,
        volume: 750,
      ),

      // Cabernet Wines
      Wine(
        name: "Cabernet Franc",
        type: "Cabernet",
        country: "France",
        imageUrl: "https://imgproxy-retcat.assets.schwarz/G5tOrJ69IewVqDqvAY7FBMB1vJRtCvUfTdSUeOvup94/sm:1/w:1500/h:1125/cz/M6Ly9wcm9kLWNhd/GFsb2ctbWVkaWEvdWsvMS9CM0VFMkExOTNFODdFNDFGN0VGMjU1MTQ/5NEVEMjlENzRFODY0N0QwQjE5ODZBNkVEMEZFMDExNzMyODg2NzJELmpwZw.jpg",
        price: 22.00,
        rating: 4.4,
        volume: 750,
      ),
      Wine(
        name: "Cabernet Merlot",
        type: "Cabernet",
        country: "Italy",
        imageUrl: "https://www.smithandhook.com/wp-content/uploads/2020/12/Smith_and_Hook_Cabernet_Sauvignon_Paso_Robles_Lifestyle.jpg",
        price: 24.50,
        rating: 4.6,
        volume: 750,
      ),
      Wine(
        name: "Cabernet Reserve",
        type: "Cabernet",
        country: "Moldova",
        imageUrl: "https://www.longevitywines.com/uploads/2/6/0/7/26071778/phil-long-button-2_orig.jpg",
        price: 28.00,
        rating: 4.8,
        volume: 750,
      ),

      // Merlot Wines
      Wine(
        name: "Merlot Reserve",
        type: "Merlot",
        country: "France",
        imageUrl: "https://www.winerack.com/globalassets/wine-rack/productassets/80028744-jt-prs-mrl-750-wr.jpg",
        price: 26.00,
        rating: 4.7,
        volume: 750,
      ),
      Wine(
        name: "Italian Merlot",
        type: "Merlot",
        country: "Italy",
        imageUrl: "https://shop.realcanadianliquorstore.ca/cdn/shop/products/JackTriggsMerlot750ML-RCLS-900x900_03f34c0f-925d-432f-9cb1-259e7e388102_600x.jpg?v=1614767370",
        price: 20.50,
        rating: 4.5,
        volume: 750,
      ),
      Wine(
        name: "Moldovan Merlot",
        type: "Merlot",
        country: "Moldova",
        imageUrl: "https://www.broadwaywinecompany.co.uk/wp-content/uploads/2020/10/Roberts-Reeves-Merlot.jpg.webp",
        price: 18.99,
        rating: 4.3,
        volume: 750,
      ),

      // Airen Wines
      Wine(
        name: "Airen Classico",
        type: "Airen",
        country: "France",
        imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Airen_wine.jpg/354px-Airen_wine.jpg",
        price: 13.50,
        rating: 4.0,
        volume: 750,
      ),
      Wine(
        name: "Airen Premium",
        type: "Airen",
        country: "Italy",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoDq8w8g9YCkhCZNymY6m_7XKpbWQX6uTKog&s",
        price: 17.50,
        rating: 4.2,
        volume: 750,
      ),
      Wine(
        name: "Airen Special",
        type: "Airen",
        country: "Moldova",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgkFBQD1ZaWnvRE7gZhJSoxrV-gX5qFqrbuA&s",
        price: 19.99,
        rating: 4.3,
        volume: 750,
      ),
    ];
  }
  Map<String, bool> _isWineSelected = {
    'Red wines': true,
    'White wines': false,
    'Rosé wines': false,
    'Dry': false,
    'Sweet': false,
    'France': false,
    'Italy': false,
    'Moldova': false,
    'Cabernet': false,
    'Marlot': false,
    'Airen': false,
  };
  void _toggleRecommendations() {
    setState(() {
      _showRecommendations = !_showRecommendations;
      _showAddresses = false;
      _showNotificationBadge = false;
    });
    _updateOverlay();
  }
  void _toggleAddresses() {
    setState(() {
      _showAddresses = !_showAddresses;
      if (_showAddresses) _showRecommendations = false;
    });
    _updateOverlay();
  }
  void _selectAddress(String address) {
    setState(() {
      _selectedAddress = address;
      _showAddresses = false;
    });
    _updateOverlay();
  }
  void _updateOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = (_showRecommendations || _showAddresses) ? _createOverlayEntry() : null;
    if (_overlayEntry != null) {
      Overlay.of(context)!.insert(_overlayEntry!);
    }
  }
  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) {
        return Stack(
          children: [
            if (_showRecommendations)
              _buildOverlay(null, _toggleRecommendations, [
                '1. Cabernet Sauvignon for a bold flavor.',
                '2. Chardonnay for a light experience.',
                '3. Merlot for an easy-drinking wine.',
              ]),
            if (_showAddresses)
              _buildOverlay(null, _toggleAddresses, [
                '14 Donnerville Street, England',
                '93 North Hill Road, Canada',
                '43 Elm Street, USA',
                '124 Maple Avenue, Australia',
                '68 Pine Road, Germany',
                '94 Birch Boulevard, France',
              ]),
          ],
        );
      },
    );
  }
  Widget _buildOverlay(String? title, VoidCallback onClose, [List<String>? addresses]) {
    return Positioned(
      top: 100,
      left: _showAddresses ? 20 : null,
      right: _showRecommendations ? 20 : null,
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  IconButton(icon: const Icon(Icons.close), onPressed: onClose),
                ],
              ),
            if (addresses != null)
              ...addresses.map((address) => GestureDetector(
                onTap: () => _selectAddress(address),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    address,
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              )),
          ],
        ),
      ),
    );
  }
  Widget _buildOverlayContainer(Widget child) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 4)],
      ),
      child: child,
    );
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            _buildNotificationAndAddressRow(),
            SizedBox(height: 20),
            _buildSearchBar(),
            SizedBox(height: 20),
            _buildSectionTitle('Shop wines by'),
            SizedBox(height: 20),
            _buildButtonRow(),
            SizedBox(height: 20),
            _buildWineSquares(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
  Widget _buildNotificationAndAddressRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: _toggleAddresses,
          child: _buildOverlayContainer(
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Selected Address', style: TextStyle(color: Colors.grey, fontSize: 12)),
                Text(_selectedAddress, style: const TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
        _buildCircleButton(
          onPressed: _toggleRecommendations,
          icon: Icons.notifications,
          notificationCount: '3',
        ),
      ],
    );
  }
  Widget _buildWineCard(Wine wine) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 290,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
      ),
      child: Row(
        children: [
          Image.network(wine.imageUrl, height: 290, width: 140, fit: BoxFit.cover),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(wine.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('Type: ${wine.type}'),
                  Text('Country: ${wine.country}'),
                  const Spacer(),
                  Container(
                    color: Colors.grey[300],
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text('Price: \$${wine.price}'),
                        Text('Rating: ${wine.rating}'),
                        Text('Volume: ${wine.volume} ml'),
                        ElevatedButton(onPressed: () {}, child: const Text('Favorite <3')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildSearchBar() {
    return Positioned(
      top: 110,
      left: 20,
      right: 20,
      child: const SearchBar(),
    );
  }
  Widget _buildSectionTitle(String title) {
    return Positioned(
      top: 170,
      left: 20,
      right: 20,
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
  Widget _buildButtonRow() {
    return Positioned(
      top: 210,
      left: 20,
      right: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: ['Type', 'Style', 'Countries', 'Grape'].asMap().entries.map((entry) {
          int index = entry.key;
          String title = entry.value;
          return GestureDetector(
            onTap: () {
              setState(() {
                _isSelected = List.generate(4, (i) => i == index);
              });
            },
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: _isSelected[index] ? Colors.pink[100] : Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4, offset: const Offset(0, 2))],
              ),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: _isSelected[index] ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
  Widget _buildWineSquares() {
    return Positioned(
      top: 320,
      left: 20,
      right: 20,
      child: Column(
        children: [
          if (_isSelected[0]) _buildWineSquareRow([
            _buildWineSquare('Red wines', 'https://winery.ph/cdn/shop/articles/WPH_Blog_Hero_Graphics_1_1500x901.jpg'),
            _buildWineSquare('White wines', 'https://www.wineenthusiast.com/wp-content/uploads/2023/05/White_Wine_Getty_HERO_1920x1280.jpg'),
            _buildWineSquare('Rosé wines', 'https://images.ctfassets.net/t3zrnw7spzsy/1G0KTDJEPYrCNfspfluYKJ/f6f26ff08f496b2febb6f61715905278/Sweet_rose_wine_-_two_glasses_of_rose_wine_on_a_table_-_image.jpg?w=1600&h=899&fl=progressive&q=80&fm=jpg'),
          ]),
          if (_isSelected[1]) _buildWineSquareRow([
            _buildWineSquare('Dry', 'https://minuman.com/cdn/shop/articles/Breaking-the-Misconceptions-of-Dry-Wine.jpg'),
            _buildWineSquare('Sweet', 'https://beautyeval.com/wp-content/uploads/2023/08/Dessert_Wines_With_Fresh_Grapes.jpg'),
          ]),
          if (_isSelected[2]) _buildWineSquareRow([
            _buildWineSquare('France', 'https://img.freepik.com/premium-photo/red-wine-national-french-flag-background-famous-french-drink-best-red-wine-french-wine-menu-european-tourism-wine-france_99272-7620.jpg'),
            _buildWineSquare('Italy', 'https://img.freepik.com/premium-photo/red-wine-national-italy-flag-background-famous-italian-drink-best-red-wine-italian-wine-menu-european-tourism-wine-italy_99272-7622.jpg'),
            _buildWineSquare('Moldova', 'https://i.simpalsmedia.com/point.md/news/900x900/35d78fd7ab6cc81b3d33b7f81c46d0a3.jpg'),
          ]),
          if (_isSelected[3]) _buildWineSquareRow([
            _buildWineSquare('Cabernet', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOSdMaj9QXY_yRMAHLPuSltB0VY5KAGd1QDm-7CG1zVkQyh_GEfRUQchwkwyHcTMtFjFw&usqp=CAU'),
            _buildWineSquare('Marlot', 'https://chizay.com/wp-content/uploads/2018/08/Merlot_2019-3.jpg'),
            _buildWineSquare('Airen', 'https://129441991.cdn6.editmysite.com/uploads/1/2/9/4/129441991/s270581222302716153_p2615_i2_w441.jpeg'),
          ]),
          if (_isWineSelected['Red wines'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[0]),
                _buildWineCard(wines[1]),
                _buildWineCard(wines[2]),
              ],
            ),
          if (_isWineSelected['White wines'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[3]),
                _buildWineCard(wines[4]),
                _buildWineCard(wines[5]),
              ],
            ),
          if (_isWineSelected['Rosé wines'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[6]),
                _buildWineCard(wines[7]),
                _buildWineCard(wines[8]),
              ],
            ),
          if (_isWineSelected['Dry'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[9]),
                _buildWineCard(wines[10]),
                _buildWineCard(wines[11]),
              ],
            ),
          if (_isWineSelected['Sweet'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[12]),
                _buildWineCard(wines[13]),
                _buildWineCard(wines[14]),
              ],
            ),
          if (_isWineSelected['France'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[15]),
                _buildWineCard(wines[16]),
                _buildWineCard(wines[17]),
              ],
            ),
          if (_isWineSelected['Italy'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[18]),
                _buildWineCard(wines[19]),
                _buildWineCard(wines[20]),
              ],
            ),
          if (_isWineSelected['Moldova'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[21]),
                _buildWineCard(wines[22]),
                _buildWineCard(wines[23]),
              ],
            ),
          if (_isWineSelected['Cabernet'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[24]),
                _buildWineCard(wines[25]),
                _buildWineCard(wines[26]),
              ],
            ),
          if (_isWineSelected['Marlot'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[27]),
                _buildWineCard(wines[28]),
                _buildWineCard(wines[29]),
              ],
            ),
          if (_isWineSelected['Airen'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[30]),
                _buildWineCard(wines[31]),
                _buildWineCard(wines[32]),
              ],
            ),
        ],
      ),
    );
  }
  Widget _buildWineSquare(String title, String imageUrl) {
    bool isSelected = _isWineSelected[title] ?? false;

    return GestureDetector(
      onTap: () {
        setState(() {
          _isWineSelected.updateAll((key, value) => false);
          _isWineSelected[title] = true;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 4,
        height: 140,
        decoration: BoxDecoration(
          color: isSelected ? Colors.pink[100] : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2)),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(imageUrl, height: 100, width: 100, fit: BoxFit.cover),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildWineSquareRow(List<Widget> wineSquares) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: wineSquares,
    );
  }
  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(color: Colors.black26, blurRadius: 4, offset: const Offset(0, 2)),
      ],
    );
  }
  Widget _buildCircleButton({
    required VoidCallback onPressed,
    required IconData icon,
    String? notificationCount,
  }) {
    return Stack(
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
            backgroundColor: Colors.blue,
          ),
          child: Icon(icon, color: Colors.white),
        ),
        if (_showNotificationBadge && notificationCount != null)
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: const BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Center(
                child: Text(
                  notificationCount,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 4, offset: const Offset(0, 2)),
        ],
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search...',
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
class Wine {
  final String imageUrl;
  final String name;
  final String type;
  final String country;
  final double price;
  final double rating;
  final int volume;
  Wine({
    required this.imageUrl,
    required this.name,
    required this.type,
    required this.country,
    required this.price,
    required this.rating,
    required this.volume,
  });
}