
class Result {
  Result({
    String? kind,
    num? totalItems,
    List<Items>? items,
  }) {
    _kind = kind;
    _totalItems = totalItems;
    _items = items;
  }

  Result.fromJson(dynamic json) {
    _kind = json['kind'];
    _totalItems = json['totalItems'];
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
  }

  String? _kind;
  num? _totalItems;
  List<Items>? _items;

  Result copyWith({
    String? kind,
    num? totalItems,
    List<Items>? items,
  }) =>
      Result(
        kind: kind ?? _kind,
        totalItems: totalItems ?? _totalItems,
        items: items ?? _items,
      );

  String? get kind => _kind;

  num? get totalItems => _totalItems;

  List<Items>? get items => _items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = _kind;
    map['totalItems'] = _totalItems;
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// kind : "books#volume"
/// id : "29cNR2fg1qMC"
/// etag : "1igxP0EcCT0"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/29cNR2fg1qMC"
/// volumeInfo : {"title":"Gabriel García Márquez","subtitle":"Una vida","authors":["Gerald Martin"],"publisher":"DEBATE","publishedDate":"2011-06-17","description":"La biografía definitiva de García Márquez, una obra extraordinaria fruto de 17 años de trabajo. «Todo escritor con principios debería tener un biógrafo inglés», dijo Gabriel García Márquez sobre este libro en una ocasión. Tras diecisiete años de trabajo, más de trescientas entrevistas y un primer borrador con más de tres mil páginas, Gerald Martin ha logrado estar a la altura de esa frase al escribir una biografía magistral, «tolerada» más que autorizada, y saludada por la crítica como la obra definitiva sobre el gran escritor colombiano, quizá el más influyente en lengua española de los últimos cincuenta años. Un libro que recorre la vida y la obra del escritor más fascinante del siglo XX. Desde los inicios en Aracataca y la fundamental relación con su abuelo, Nicolás Márquez, su infancia y juventud, los inicios como periodista entre Cartagena y Barranquilla, el descubrimiento de Europa, el regreso a América y el impacto dela revolución cubana, su consagración como escritor tras la publicación en 1967 de Cien años de soledad y el Nobel de Literatura en 1982, hasta la actualidad. Por sus páginas desfilan sus amistades políticas y literarias: Castro, González, Clinton, Cortázar, Mutis, Vargas Llosa, Balcells, y sus trayectos vitales: Colombia, Barcelona, México. En resumen, un acontecimiento editorial internacional. Reseñas: «Una obra monumental, precisa, atenta a los datos, pero también muy atmosférica y literaria.» Marta Caballero, El Cultural «Una biografía brillante.» Kirkus Reviews «Una crónica magistral y sensible, equilibrada y juiciosa pero también un emocionante tributo.» Times Literary Supplement","industryIdentifiers":[{"type":"ISBN_13","identifier":"9788499920818"},{"type":"ISBN_10","identifier":"8499920810"}],"readingModes":{"text":true,"image":true},"pageCount":768,"printType":"BOOK","categories":["Biography & Autobiography"],"averageRating":3.5,"ratingsCount":2,"maturityRating":"NOT_MATURE","allowAnonLogging":true,"contentVersion":"2.17.19.0.preview.3","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=29cNR2fg1qMC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=29cNR2fg1qMC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"es","previewLink":"http://books.google.com.co/books?id=29cNR2fg1qMC&printsec=frontcover&dq=gabriel+garcia+marquez&hl=&cd=1&source=gbs_api","infoLink":"https://play.google.com/store/books/details?id=29cNR2fg1qMC&source=gbs_api","canonicalVolumeLink":"https://play.google.com/store/books/details?id=29cNR2fg1qMC"}
/// saleInfo : {"country":"CO","saleability":"FOR_SALE","isEbook":true,"listPrice":{"amount":27900,"currencyCode":"COP"},"retailPrice":{"amount":27900,"currencyCode":"COP"},"buyLink":"https://play.google.com/store/books/details?id=29cNR2fg1qMC&rdid=book-29cNR2fg1qMC&rdot=1&source=gbs_api","offers":[{"finskyOfferType":1,"listPrice":{"amountInMicros":27900000000,"currencyCode":"COP"},"retailPrice":{"amountInMicros":27900000000,"currencyCode":"COP"}}]}
/// accessInfo : {"country":"CO","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED_FOR_ACCESSIBILITY","epub":{"isAvailable":true,"acsTokenLink":"http://books.google.com.co/books/download/Gabriel_Garc%C3%ADa_M%C3%A1rquez-sample-epub.acsm?id=29cNR2fg1qMC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"pdf":{"isAvailable":true,"acsTokenLink":"http://books.google.com.co/books/download/Gabriel_Garc%C3%ADa_M%C3%A1rquez-sample-pdf.acsm?id=29cNR2fg1qMC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"webReaderLink":"http://play.google.com/books/reader?id=29cNR2fg1qMC&hl=&printsec=frontcover&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"La biografía definitiva de García Márquez, una obra extraordinaria fruto de 17 años de trabajo. «Todo escritor con principios debería tener un biógrafo inglés», dijo Gabriel García Márquez sobre este libro en una ocasión."}
class Items {
  Items({
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    VolumeInfo? volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,
  }) {
    _kind = kind;
    _id = id;
    _etag = etag;
    _selfLink = selfLink;
    _volumeInfo = volumeInfo;
    _saleInfo = saleInfo;
    _accessInfo = accessInfo;
    _searchInfo = searchInfo;
  }

  Items.fromJson(dynamic json) {
    _kind = json['kind'];
    _id = json['id'];
    _etag = json['etag'];
    _selfLink = json['selfLink'];
    _volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    _saleInfo =
    json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    _accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
    _searchInfo = json['searchInfo'] != null
        ? SearchInfo.fromJson(json['searchInfo'])
        : null;
  }

  String? _kind;
  String? _id;
  String? _etag;
  String? _selfLink;
  VolumeInfo? _volumeInfo;
  SaleInfo? _saleInfo;
  AccessInfo? _accessInfo;
  SearchInfo? _searchInfo;

  Items copyWith({
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    VolumeInfo? volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,
  }) =>
      Items(
        kind: kind ?? _kind,
        id: id ?? _id,
        etag: etag ?? _etag,
        selfLink: selfLink ?? _selfLink,
        volumeInfo: volumeInfo ?? _volumeInfo,
        saleInfo: saleInfo ?? _saleInfo,
        accessInfo: accessInfo ?? _accessInfo,
        searchInfo: searchInfo ?? _searchInfo,
      );

  String? get kind => _kind;

  String? get id => _id;

  String? get etag => _etag;

  String? get selfLink => _selfLink;

  VolumeInfo? get volumeInfo => _volumeInfo;

  SaleInfo? get saleInfo => _saleInfo;

  AccessInfo? get accessInfo => _accessInfo;

  SearchInfo? get searchInfo => _searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = _kind;
    map['id'] = _id;
    map['etag'] = _etag;
    map['selfLink'] = _selfLink;
    if (_volumeInfo != null) {
      map['volumeInfo'] = _volumeInfo?.toJson();
    }
    if (_saleInfo != null) {
      map['saleInfo'] = _saleInfo?.toJson();
    }
    if (_accessInfo != null) {
      map['accessInfo'] = _accessInfo?.toJson();
    }
    if (_searchInfo != null) {
      map['searchInfo'] = _searchInfo?.toJson();
    }
    return map;
  }
}

/// textSnippet : "La biografía definitiva de García Márquez, una obra extraordinaria fruto de 17 años de trabajo. «Todo escritor con principios debería tener un biógrafo inglés», dijo Gabriel García Márquez sobre este libro en una ocasión."
class SearchInfo {
  SearchInfo({
    String? textSnippet,
  }) {
    _textSnippet = textSnippet;
  }

  SearchInfo.fromJson(dynamic json) {
    _textSnippet = json['textSnippet'];
  }

  String? _textSnippet;

  SearchInfo copyWith({
    String? textSnippet,
  }) =>
      SearchInfo(
        textSnippet: textSnippet ?? _textSnippet,
      );

  String? get textSnippet => _textSnippet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = _textSnippet;
    return map;
  }
}

/// country : "CO"
/// viewability : "PARTIAL"
/// embeddable : true
/// publicDomain : false
/// textToSpeechPermission : "ALLOWED_FOR_ACCESSIBILITY"
/// epub : {"isAvailable":true,"acsTokenLink":"http://books.google.com.co/books/download/Gabriel_Garc%C3%ADa_M%C3%A1rquez-sample-epub.acsm?id=29cNR2fg1qMC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"}
/// pdf : {"isAvailable":true,"acsTokenLink":"http://books.google.com.co/books/download/Gabriel_Garc%C3%ADa_M%C3%A1rquez-sample-pdf.acsm?id=29cNR2fg1qMC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"}
/// webReaderLink : "http://play.google.com/books/reader?id=29cNR2fg1qMC&hl=&printsec=frontcover&source=gbs_api"
/// accessViewStatus : "SAMPLE"
/// quoteSharingAllowed : false
class AccessInfo {
  AccessInfo({
    String? country,
    String? viewability,
    bool? embeddable,
    bool? publicDomain,
    String? textToSpeechPermission,
    Epub? epub,
    Pdf? pdf,
    String? webReaderLink,
    String? accessViewStatus,
    bool? quoteSharingAllowed,
  }) {
    _country = country;
    _viewability = viewability;
    _embeddable = embeddable;
    _publicDomain = publicDomain;
    _textToSpeechPermission = textToSpeechPermission;
    _epub = epub;
    _pdf = pdf;
    _webReaderLink = webReaderLink;
    _accessViewStatus = accessViewStatus;
    _quoteSharingAllowed = quoteSharingAllowed;
  }

  AccessInfo.fromJson(dynamic json) {
    _country = json['country'];
    _viewability = json['viewability'];
    _embeddable = json['embeddable'];
    _publicDomain = json['publicDomain'];
    _textToSpeechPermission = json['textToSpeechPermission'];
    _epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
    _pdf = json['pdf'] != null ? Pdf.fromJson(json['pdf']) : null;
    _webReaderLink = json['webReaderLink'];
    _accessViewStatus = json['accessViewStatus'];
    _quoteSharingAllowed = json['quoteSharingAllowed'];
  }

  String? _country;
  String? _viewability;
  bool? _embeddable;
  bool? _publicDomain;
  String? _textToSpeechPermission;
  Epub? _epub;
  Pdf? _pdf;
  String? _webReaderLink;
  String? _accessViewStatus;
  bool? _quoteSharingAllowed;

  AccessInfo copyWith({
    String? country,
    String? viewability,
    bool? embeddable,
    bool? publicDomain,
    String? textToSpeechPermission,
    Epub? epub,
    Pdf? pdf,
    String? webReaderLink,
    String? accessViewStatus,
    bool? quoteSharingAllowed,
  }) =>
      AccessInfo(
        country: country ?? _country,
        viewability: viewability ?? _viewability,
        embeddable: embeddable ?? _embeddable,
        publicDomain: publicDomain ?? _publicDomain,
        textToSpeechPermission:
        textToSpeechPermission ?? _textToSpeechPermission,
        epub: epub ?? _epub,
        pdf: pdf ?? _pdf,
        webReaderLink: webReaderLink ?? _webReaderLink,
        accessViewStatus: accessViewStatus ?? _accessViewStatus,
        quoteSharingAllowed: quoteSharingAllowed ?? _quoteSharingAllowed,
      );

  String? get country => _country;

  String? get viewability => _viewability;

  bool? get embeddable => _embeddable;

  bool? get publicDomain => _publicDomain;

  String? get textToSpeechPermission => _textToSpeechPermission;

  Epub? get epub => _epub;

  Pdf? get pdf => _pdf;

  String? get webReaderLink => _webReaderLink;

  String? get accessViewStatus => _accessViewStatus;

  bool? get quoteSharingAllowed => _quoteSharingAllowed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['viewability'] = _viewability;
    map['embeddable'] = _embeddable;
    map['publicDomain'] = _publicDomain;
    map['textToSpeechPermission'] = _textToSpeechPermission;
    if (_epub != null) {
      map['epub'] = _epub?.toJson();
    }
    if (_pdf != null) {
      map['pdf'] = _pdf?.toJson();
    }
    map['webReaderLink'] = _webReaderLink;
    map['accessViewStatus'] = _accessViewStatus;
    map['quoteSharingAllowed'] = _quoteSharingAllowed;
    return map;
  }
}

/// isAvailable : true
/// acsTokenLink : "http://books.google.com.co/books/download/Gabriel_Garc%C3%ADa_M%C3%A1rquez-sample-pdf.acsm?id=29cNR2fg1qMC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
class Pdf {
  Pdf({
    bool? isAvailable,
    String? acsTokenLink,
  }) {
    _isAvailable = isAvailable;
    _acsTokenLink = acsTokenLink;
  }

  Pdf.fromJson(dynamic json) {
    _isAvailable = json['isAvailable'];
    _acsTokenLink = json['acsTokenLink'];
  }

  bool? _isAvailable;
  String? _acsTokenLink;

  Pdf copyWith({
    bool? isAvailable,
    String? acsTokenLink,
  }) =>
      Pdf(
        isAvailable: isAvailable ?? _isAvailable,
        acsTokenLink: acsTokenLink ?? _acsTokenLink,
      );

  bool? get isAvailable => _isAvailable;

  String? get acsTokenLink => _acsTokenLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = _isAvailable;
    map['acsTokenLink'] = _acsTokenLink;
    return map;
  }
}

/// isAvailable : true
/// acsTokenLink : "http://books.google.com.co/books/download/Gabriel_Garc%C3%ADa_M%C3%A1rquez-sample-epub.acsm?id=29cNR2fg1qMC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
class Epub {
  Epub({
    bool? isAvailable,
    String? acsTokenLink,
  }) {
    _isAvailable = isAvailable;
    _acsTokenLink = acsTokenLink;
  }

  Epub.fromJson(dynamic json) {
    _isAvailable = json['isAvailable'];
    _acsTokenLink = json['acsTokenLink'];
  }

  bool? _isAvailable;
  String? _acsTokenLink;

  Epub copyWith({
    bool? isAvailable,
    String? acsTokenLink,
  }) =>
      Epub(
        isAvailable: isAvailable ?? _isAvailable,
        acsTokenLink: acsTokenLink ?? _acsTokenLink,
      );

  bool? get isAvailable => _isAvailable;

  String? get acsTokenLink => _acsTokenLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = _isAvailable;
    map['acsTokenLink'] = _acsTokenLink;
    return map;
  }
}

/// country : "CO"
/// saleability : "FOR_SALE"
/// isEbook : true
/// listPrice : {"amount":27900,"currencyCode":"COP"}
/// retailPrice : {"amount":27900,"currencyCode":"COP"}
/// buyLink : "https://play.google.com/store/books/details?id=29cNR2fg1qMC&rdid=book-29cNR2fg1qMC&rdot=1&source=gbs_api"
/// offers : [{"finskyOfferType":1,"listPrice":{"amountInMicros":27900000000,"currencyCode":"COP"},"retailPrice":{"amountInMicros":27900000000,"currencyCode":"COP"}}]
class SaleInfo {
  SaleInfo({
    String? country,
    String? saleability,
    bool? isEbook,
    ListPrice? listPrice,
    RetailPrice? retailPrice,
    String? buyLink,
    List<Offers>? offers,
  }) {
    _country = country;
    _saleability = saleability;
    _isEbook = isEbook;
    _listPrice = listPrice;
    _retailPrice = retailPrice;
    _buyLink = buyLink;
    _offers = offers;
  }

  SaleInfo.fromJson(dynamic json) {
    _country = json['country'];
    _saleability = json['saleability'];
    _isEbook = json['isEbook'];
    _listPrice = json['listPrice'] != null
        ? ListPrice.fromJson(json['listPrice'])
        : null;
    _retailPrice = json['retailPrice'] != null
        ? RetailPrice.fromJson(json['retailPrice'])
        : null;
    _buyLink = json['buyLink'];
    if (json['offers'] != null) {
      _offers = [];
      json['offers'].forEach((v) {
        _offers?.add(Offers.fromJson(v));
      });
    }
  }

  String? _country;
  String? _saleability;
  bool? _isEbook;
  ListPrice? _listPrice;
  RetailPrice? _retailPrice;
  String? _buyLink;
  List<Offers>? _offers;

  SaleInfo copyWith({
    String? country,
    String? saleability,
    bool? isEbook,
    ListPrice? listPrice,
    RetailPrice? retailPrice,
    String? buyLink,
    List<Offers>? offers,
  }) =>
      SaleInfo(
        country: country ?? _country,
        saleability: saleability ?? _saleability,
        isEbook: isEbook ?? _isEbook,
        listPrice: listPrice ?? _listPrice,
        retailPrice: retailPrice ?? _retailPrice,
        buyLink: buyLink ?? _buyLink,
        offers: offers ?? _offers,
      );

  String? get country => _country;

  String? get saleability => _saleability;

  bool? get isEbook => _isEbook;

  ListPrice? get listPrice => _listPrice;

  RetailPrice? get retailPrice => _retailPrice;

  String? get buyLink => _buyLink;

  List<Offers>? get offers => _offers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['saleability'] = _saleability;
    map['isEbook'] = _isEbook;
    map['listPrice'] = _listPrice;
    if (_retailPrice != null) {
      map['retailPrice'] = _retailPrice?.toJson();
    }
    map['buyLink'] = _buyLink;
    if (_offers != null) {
      map['offers'] = _offers?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// finskyOfferType : 1
/// listPrice : {"amountInMicros":27900000000,"currencyCode":"COP"}
/// retailPrice : {"amountInMicros":27900000000,"currencyCode":"COP"}
class Offers {
  Offers({
    num? finskyOfferType,
    ListPrice? listPrice,
    RetailPrice? retailPrice,
  }) {
    _finskyOfferType = finskyOfferType;
    _listPrice = listPrice;
    _retailPrice = retailPrice;
  }

  Offers.fromJson(dynamic json) {
    _finskyOfferType = json['finskyOfferType'];
    _listPrice = json['listPrice'] != null
        ? ListPrice.fromJson(json['listPrice'])
        : null;
    _retailPrice = json['retailPrice'] != null
        ? RetailPrice.fromJson(json['retailPrice'])
        : null;
  }

  num? _finskyOfferType;
  ListPrice? _listPrice;
  RetailPrice? _retailPrice;

  Offers copyWith({
    num? finskyOfferType,
    ListPrice? listPrice,
    RetailPrice? retailPrice,
  }) =>
      Offers(
        finskyOfferType: finskyOfferType ?? _finskyOfferType,
        listPrice: listPrice ?? _listPrice,
        retailPrice: retailPrice ?? _retailPrice,
      );

  num? get finskyOfferType => _finskyOfferType;

  ListPrice? get listPrice => _listPrice;

  RetailPrice? get retailPrice => _retailPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['finskyOfferType'] = _finskyOfferType;
    map['listPrice'] = _listPrice;
    if (_retailPrice != null) {
      map['retailPrice'] = _retailPrice?.toJson();
    }
    return map;
  }
}

/// amountInMicros : 27900000000
/// currencyCode : "COP"
/*class RetailPrice {
  RetailPrice({
    num? amountInMicros,
    String? currencyCode,
  }) {
    _amountInMicros = amountInMicros;
    _currencyCode = currencyCode;
  }
  RetailPrice.fromJson(dynamic json) {
    _amountInMicros = json['amountInMicros'];
    _currencyCode = json['currencyCode'];
  }
  num? _amountInMicros;
  String? _currencyCode;
  RetailPrice copyWith({
    num? amountInMicros,
    String? currencyCode,
  }) =>
      RetailPrice(
        amountInMicros: amountInMicros ?? _amountInMicros,
        currencyCode: currencyCode ?? _currencyCode,
      );
  num? get amountInMicros => _amountInMicros;
  String? get currencyCode => _currencyCode;
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amountInMicros'] = _amountInMicros;
    map['currencyCode'] = _currencyCode;
    return map;
  }
}*/

/// amountInMicros : 27900000000
/// currencyCode : "COP"
/*class ListPrice {
  ListPrice({
    num? amountInMicros,
    String? currencyCode,
  }) {
    _amountInMicros = amountInMicros;
    _currencyCode = currencyCode;
  }
  ListPrice.fromJson(dynamic json) {
    _amountInMicros = json['amountInMicros'];
    _currencyCode = json['currencyCode'];
  }
  String? _currencyCode;
  ListPrice copyWith({
    num? amountInMicros,
    String? currencyCode,
  }) =>
      ListPrice(
        amountInMicros: amountInMicros ?? _amountInMicros,
        currencyCode: currencyCode ?? _currencyCode,
      );
  num? get amountInMicros => _amountInMicros;
  String? get currencyCode => _currencyCode;
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amountInMicros'] = _amountInMicros;
    map['currencyCode'] = _currencyCode;
    return map;
  }
}*/

/// amount : 27900
/// currencyCode : "COP"
class RetailPrice {
  num? _amount;
  String? _currencyCode;
  num? _amountInMicros;

  RetailPrice({
    num? amountInMicros,
    num? amount,
    String? currencyCode,
  }) {
    _amountInMicros = amountInMicros;
    _amount = amount;
    _currencyCode = currencyCode;
  }

  RetailPrice.fromJson(dynamic json) {
    _amountInMicros = json['amountInMicros'];
    _amount = json['amount'];
    _currencyCode = json['currencyCode'];
  }

  RetailPrice copyWith({
    num? amountInMicros,
    num? amount,
    String? currencyCode,
  }) =>
      RetailPrice(
        amountInMicros: amountInMicros ?? _amountInMicros,
        amount: amount ?? _amount,
        currencyCode: currencyCode ?? _currencyCode,
      );

  num? get amount => _amount;

  String? get currencyCode => _currencyCode;

  num? get amountInMicros => _amountInMicros;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amountInMicros'] = _amountInMicros;
    map['amount'] = _amount;
    map['currencyCode'] = _currencyCode;
    return map;
  }
}

/// amount : 27900
/// currencyCode : "COP"
class ListPrice {
  num? _amount;
  String? _currencyCode;
  num? _amountInMicros;

  ListPrice({
    num? amount,
    String? currencyCode,
    num? amountInMicros,
  }) {
    _amount = amount;
    _currencyCode = currencyCode;
    _amountInMicros = amountInMicros;
  }

  ListPrice.fromJson(dynamic json) {
    _amount = json['amount'];
    _currencyCode = json['currencyCode'];
    _amountInMicros = json['amountInMicros'];
  }

  ListPrice copyWith({
    num? amount,
    String? currencyCode,
    num? amountInMicros,
  }) =>
      ListPrice(
        amount: amount ?? _amount,
        currencyCode: currencyCode ?? _currencyCode,
        amountInMicros: amountInMicros ?? _amountInMicros,
      );

  num? get amount => _amount;

  String? get currencyCode => _currencyCode;

  num? get amountInMicros => _amountInMicros;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = _amount;
    map['currencyCode'] = _currencyCode;
    map['amountInMicros'] = _amountInMicros;
    return map;
  }
}

/// title : "Gabriel García Márquez"
/// subtitle : "Una vida"
/// authors : ["Gerald Martin"]
/// publisher : "DEBATE"
/// publishedDate : "2011-06-17"
/// description : "La biografía definitiva de García Márquez, una obra extraordinaria fruto de 17 años de trabajo. «Todo escritor con principios debería tener un biógrafo inglés», dijo Gabriel García Márquez sobre este libro en una ocasión. Tras diecisiete años de trabajo, más de trescientas entrevistas y un primer borrador con más de tres mil páginas, Gerald Martin ha logrado estar a la altura de esa frase al escribir una biografía magistral, «tolerada» más que autorizada, y saludada por la crítica como la obra definitiva sobre el gran escritor colombiano, quizá el más influyente en lengua española de los últimos cincuenta años. Un libro que recorre la vida y la obra del escritor más fascinante del siglo XX. Desde los inicios en Aracataca y la fundamental relación con su abuelo, Nicolás Márquez, su infancia y juventud, los inicios como periodista entre Cartagena y Barranquilla, el descubrimiento de Europa, el regreso a América y el impacto dela revolución cubana, su consagración como escritor tras la publicación en 1967 de Cien años de soledad y el Nobel de Literatura en 1982, hasta la actualidad. Por sus páginas desfilan sus amistades políticas y literarias: Castro, González, Clinton, Cortázar, Mutis, Vargas Llosa, Balcells, y sus trayectos vitales: Colombia, Barcelona, México. En resumen, un acontecimiento editorial internacional. Reseñas: «Una obra monumental, precisa, atenta a los datos, pero también muy atmosférica y literaria.» Marta Caballero, El Cultural «Una biografía brillante.» Kirkus Reviews «Una crónica magistral y sensible, equilibrada y juiciosa pero también un emocionante tributo.» Times Literary Supplement"
/// industryIdentifiers : [{"type":"ISBN_13","identifier":"9788499920818"},{"type":"ISBN_10","identifier":"8499920810"}]
/// readingModes : {"text":true,"image":true}
/// pageCount : 768
/// printType : "BOOK"
/// categories : ["Biography & Autobiography"]
/// averageRating : 3.5
/// ratingsCount : 2
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : true
/// contentVersion : "2.17.19.0.preview.3"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=29cNR2fg1qMC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=29cNR2fg1qMC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
/// language : "es"
/// previewLink : "http://books.google.com.co/books?id=29cNR2fg1qMC&printsec=frontcover&dq=gabriel+garcia+marquez&hl=&cd=1&source=gbs_api"
/// infoLink : "https://play.google.com/store/books/details?id=29cNR2fg1qMC&source=gbs_api"
/// canonicalVolumeLink : "https://play.google.com/store/books/details?id=29cNR2fg1qMC"
class VolumeInfo {
  VolumeInfo({
    String? title,
    String? subtitle,
    List<String>? authors,
    String? publisher,
    String? publishedDate,
    String? description,
    List<IndustryIdentifiers>? industryIdentifiers,
    ReadingModes? readingModes,
    num? pageCount,
    String? printType,
    List<String>? categories,
    num? averageRating,
    num? ratingsCount,
    String? maturityRating,
    bool? allowAnonLogging,
    String? contentVersion,
    PanelizationSummary? panelizationSummary,
    ImageLinks? imageLinks,
    String? language,
    String? previewLink,
    String? infoLink,
    String? canonicalVolumeLink,
  }) {
    _title = title;
    _subtitle = subtitle;
    _authors = authors;
    _publisher = publisher;
    _publishedDate = publishedDate;
    _description = description;
    _industryIdentifiers = industryIdentifiers;
    _readingModes = readingModes;
    _pageCount = pageCount;
    _printType = printType;
    _categories = categories;
    _averageRating = averageRating;
    _ratingsCount = ratingsCount;
    _maturityRating = maturityRating;
    _allowAnonLogging = allowAnonLogging;
    _contentVersion = contentVersion;
    _panelizationSummary = panelizationSummary;
    _imageLinks = imageLinks;
    _language = language;
    _previewLink = previewLink;
    _infoLink = infoLink;
    _canonicalVolumeLink = canonicalVolumeLink;
  }

  VolumeInfo.fromJson(dynamic json) {
    _title = json['title'];
    _subtitle = json['subtitle'];
    _authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    _publisher = json['publisher'];
    _publishedDate = json['publishedDate'];
    _description = json['description'];
    if (json['industryIdentifiers'] != null) {
      _industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        _industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    _readingModes = json['readingModes'] != null
        ? ReadingModes.fromJson(json['readingModes'])
        : null;
    _pageCount = json['pageCount'];
    _printType = json['printType'];
    _categories =
    json['categories'] != null ? json['categories'].cast<String>() : [];
    _averageRating = json['averageRating'];
    _ratingsCount = json['ratingsCount'];
    _maturityRating = json['maturityRating'];
    _allowAnonLogging = json['allowAnonLogging'];
    _contentVersion = json['contentVersion'];
    _panelizationSummary = json['panelizationSummary'] != null
        ? PanelizationSummary.fromJson(json['panelizationSummary'])
        : null;
    _imageLinks = json['imageLinks'] != null
        ? ImageLinks.fromJson(json['imageLinks'])
        : null;
    _language = json['language'];
    _previewLink = json['previewLink'];
    _infoLink = json['infoLink'];
    _canonicalVolumeLink = json['canonicalVolumeLink'];
  }

  String? _title;
  String? _subtitle;
  List<String>? _authors;
  String? _publisher;
  String? _publishedDate;
  String? _description;
  List<IndustryIdentifiers>? _industryIdentifiers;
  ReadingModes? _readingModes;
  num? _pageCount;
  String? _printType;
  List<String>? _categories;
  num? _averageRating;
  num? _ratingsCount;
  String? _maturityRating;
  bool? _allowAnonLogging;
  String? _contentVersion;
  PanelizationSummary? _panelizationSummary;
  ImageLinks? _imageLinks;
  String? _language;
  String? _previewLink;
  String? _infoLink;
  String? _canonicalVolumeLink;

  VolumeInfo copyWith({
    String? title,
    String? subtitle,
    List<String>? authors,
    String? publisher,
    String? publishedDate,
    String? description,
    List<IndustryIdentifiers>? industryIdentifiers,
    ReadingModes? readingModes,
    num? pageCount,
    String? printType,
    List<String>? categories,
    num? averageRating,
    num? ratingsCount,
    String? maturityRating,
    bool? allowAnonLogging,
    String? contentVersion,
    PanelizationSummary? panelizationSummary,
    ImageLinks? imageLinks,
    String? language,
    String? previewLink,
    String? infoLink,
    String? canonicalVolumeLink,
  }) =>
      VolumeInfo(
        title: title ?? _title,
        subtitle: subtitle ?? _subtitle,
        authors: authors ?? _authors,
        publisher: publisher ?? _publisher,
        publishedDate: publishedDate ?? _publishedDate,
        description: description ?? _description,
        industryIdentifiers: industryIdentifiers ?? _industryIdentifiers,
        readingModes: readingModes ?? _readingModes,
        pageCount: pageCount ?? _pageCount,
        printType: printType ?? _printType,
        categories: categories ?? _categories,
        averageRating: averageRating ?? _averageRating,
        ratingsCount: ratingsCount ?? _ratingsCount,
        maturityRating: maturityRating ?? _maturityRating,
        allowAnonLogging: allowAnonLogging ?? _allowAnonLogging,
        contentVersion: contentVersion ?? _contentVersion,
        panelizationSummary: panelizationSummary ?? _panelizationSummary,
        imageLinks: imageLinks ?? _imageLinks,
        language: language ?? _language,
        previewLink: previewLink ?? _previewLink,
        infoLink: infoLink ?? _infoLink,
        canonicalVolumeLink: canonicalVolumeLink ?? _canonicalVolumeLink,
      );

  String? get title => _title;

  String? get subtitle => _subtitle;

  List<String>? get authors => _authors;

  String? get publisher => _publisher;

  String? get publishedDate => _publishedDate;

  String? get description => _description;

  List<IndustryIdentifiers>? get industryIdentifiers => _industryIdentifiers;

  ReadingModes? get readingModes => _readingModes;

  num? get pageCount => _pageCount;

  String? get printType => _printType;

  List<String>? get categories => _categories;

  num? get averageRating => _averageRating;

  num? get ratingsCount => _ratingsCount;

  String? get maturityRating => _maturityRating;

  bool? get allowAnonLogging => _allowAnonLogging;

  String? get contentVersion => _contentVersion;

  PanelizationSummary? get panelizationSummary => _panelizationSummary;

  ImageLinks? get imageLinks => _imageLinks;

  String? get language => _language;

  String? get previewLink => _previewLink;

  String? get infoLink => _infoLink;

  String? get canonicalVolumeLink => _canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['subtitle'] = _subtitle;
    map['authors'] = _authors;
    map['publisher'] = _publisher;
    map['publishedDate'] = _publishedDate;
    map['description'] = _description;
    if (_industryIdentifiers != null) {
      map['industryIdentifiers'] =
          _industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (_readingModes != null) {
      map['readingModes'] = _readingModes?.toJson();
    }
    map['pageCount'] = _pageCount;
    map['printType'] = _printType;
    map['categories'] = _categories;
    map['averageRating'] = _averageRating;
    map['ratingsCount'] = _ratingsCount;
    map['maturityRating'] = _maturityRating;
    map['allowAnonLogging'] = _allowAnonLogging;
    map['contentVersion'] = _contentVersion;
    if (_panelizationSummary != null) {
      map['panelizationSummary'] = _panelizationSummary?.toJson();
    }
    if (_imageLinks != null) {
      map['imageLinks'] = _imageLinks?.toJson();
    }
    map['language'] = _language;
    map['previewLink'] = _previewLink;
    map['infoLink'] = _infoLink;
    map['canonicalVolumeLink'] = _canonicalVolumeLink;
    return map;
  }
}

/// smallThumbnail : "http://books.google.com/books/content?id=29cNR2fg1qMC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"
/// thumbnail : "http://books.google.com/books/content?id=29cNR2fg1qMC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
class ImageLinks {
  ImageLinks({
    String? smallThumbnail,
    String? thumbnail,
  }) {
    _smallThumbnail = smallThumbnail;
    _thumbnail = thumbnail;
  }

  ImageLinks.fromJson(dynamic json) {
    _smallThumbnail = json['smallThumbnail'];
    _thumbnail = json['thumbnail'];
  }

  String? _smallThumbnail;
  String? _thumbnail;

  ImageLinks copyWith({
    String? smallThumbnail,
    String? thumbnail,
  }) =>
      ImageLinks(
        smallThumbnail: smallThumbnail ?? _smallThumbnail,
        thumbnail: thumbnail ?? _thumbnail,
      );

  String? get smallThumbnail => _smallThumbnail;

  String? get thumbnail => _thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = _smallThumbnail;
    map['thumbnail'] = _thumbnail;
    return map;
  }
}

/// containsEpubBubbles : false
/// containsImageBubbles : false
class PanelizationSummary {
  PanelizationSummary({
    bool? containsEpubBubbles,
    bool? containsImageBubbles,
  }) {
    _containsEpubBubbles = containsEpubBubbles;
    _containsImageBubbles = containsImageBubbles;
  }

  PanelizationSummary.fromJson(dynamic json) {
    _containsEpubBubbles = json['containsEpubBubbles'];
    _containsImageBubbles = json['containsImageBubbles'];
  }

  bool? _containsEpubBubbles;
  bool? _containsImageBubbles;

  PanelizationSummary copyWith({
    bool? containsEpubBubbles,
    bool? containsImageBubbles,
  }) =>
      PanelizationSummary(
        containsEpubBubbles: containsEpubBubbles ?? _containsEpubBubbles,
        containsImageBubbles: containsImageBubbles ?? _containsImageBubbles,
      );

  bool? get containsEpubBubbles => _containsEpubBubbles;

  bool? get containsImageBubbles => _containsImageBubbles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['containsEpubBubbles'] = _containsEpubBubbles;
    map['containsImageBubbles'] = _containsImageBubbles;
    return map;
  }
}

/// text : true
/// image : true
class ReadingModes {
  ReadingModes({
    bool? text,
    bool? image,
  }) {
    _text = text;
    _image = image;
  }

  ReadingModes.fromJson(dynamic json) {
    _text = json['text'];
    _image = json['image'];
  }

  bool? _text;
  bool? _image;

  ReadingModes copyWith({
    bool? text,
    bool? image,
  }) =>
      ReadingModes(
        text: text ?? _text,
        image: image ?? _image,
      );

  bool? get text => _text;

  bool? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['image'] = _image;
    return map;
  }
}

/// type : "ISBN_13"
/// identifier : "9788499920818"
class IndustryIdentifiers {
  IndustryIdentifiers({
    String? type,
    String? identifier,
  }) {
    _type = type;
    _identifier = identifier;
  }

  IndustryIdentifiers.fromJson(dynamic json) {
    _type = json['type'];
    _identifier = json['identifier'];
  }

  String? _type;
  String? _identifier;

  IndustryIdentifiers copyWith({
    String? type,
    String? identifier,
  }) =>
      IndustryIdentifiers(
        type: type ?? _type,
        identifier: identifier ?? _identifier,
      );

  String? get type => _type;

  String? get identifier => _identifier;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['identifier'] = _identifier;
    return map;
  }
}