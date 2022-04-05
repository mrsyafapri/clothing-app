import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:clothing_app/model/clothing.dart';
import 'package:clothing_app/theme.dart';

class DetailPage extends StatelessWidget {
  final Clothing clothing;

  const DetailPage({required this.clothing});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 992) {
          return DetailWebPage(clothing: clothing);
        } else {
          return DetailMobilePage(clothing: clothing);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final Clothing clothing;

  const DetailMobilePage({required this.clothing});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              clothing.imageAsset,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 500,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),

                      /// TITLE
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  clothing.name,
                                  style: blackTextStyle.copyWith(
                                    fontSize: 24,
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: 'by ',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                          text: clothing.brand,
                                          style: blackTextStyle.copyWith(
                                            fontSize: 16,
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Text(
                                  '${clothing.rating}',
                                  style: blackTextStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      /// DESCRIPTION
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Text(
                          'Description',
                          style: regulerTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Text(
                          clothing.description,
                          style: greyTextStyle.copyWith(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '\$${clothing.price}',
                              style: blackTextStyle.copyWith(
                                fontSize: 24,
                              ),
                            ),
                            ElevatedButton(
                              child: Text(
                                'Buy Now',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 18,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: greenColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text("You Pressed Buy"),
                                ));
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: whiteColor,
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: greyColor,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  const FavoriteButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final Clothing clothing;

  const DetailWebPage({required this.clothing});

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: kIsWeb ? null : AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 64,
          ),
          child: Center(
            child: SizedBox(
              width: screenWidth <= 1200 ? 800 : 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: edge,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: whiteColor,
                          child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: greyColor,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ),
                        const FavoriteButton(),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            ClipRRect(
                              child: Image.asset(
                                widget.clothing.imageAsset,
                                height: MediaQuery.of(context).size.height,
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                // TITLE
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: edge,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            widget.clothing.name,
                                            style: blackTextStyle.copyWith(
                                              fontSize: 24,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 2,
                                          ),
                                          Text.rich(
                                            TextSpan(
                                              text: 'by ',
                                              style: greyTextStyle.copyWith(
                                                fontSize: 16,
                                              ),
                                              children: [
                                                TextSpan(
                                                    text: widget.clothing.brand,
                                                    style:
                                                        blackTextStyle.copyWith(
                                                      fontSize: 16,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                          ),
                                          Text(
                                            '${widget.clothing.rating}',
                                            style: blackTextStyle,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                // DESCRIPTION
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: edge,
                                  ),
                                  child: Text(
                                    'Description',
                                    style: regulerTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: edge,
                                  ),
                                  child: Text(
                                    widget.clothing.description,
                                    style: greyTextStyle.copyWith(
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: edge,
                                  ),
                                  height: 50,
                                  width: MediaQuery.of(context).size.width -
                                      (2 * edge),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        '\$${widget.clothing.price}',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 24,
                                        ),
                                      ),
                                      ElevatedButton(
                                        child: Text(
                                          'Buy Now',
                                          style: whiteTextStyle.copyWith(
                                            fontSize: 18,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: greenColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18),
                                          ),
                                        ),
                                        onPressed: () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                            content: Text("You Pressed Buy"),
                                          ));
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: IconButton(
        icon: Icon(
          _isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
        onPressed: () {
          setState(() {
            _isFavorite = !_isFavorite;
          });
        },
      ),
    );
  }
}
