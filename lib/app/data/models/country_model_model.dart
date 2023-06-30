class CountryModel {
  Name? name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  Currencies? currencies;
  Idd? idd;
  List<String>? capital;
  List<String>? altSpellings;
  String? region;
  String? subregion;
  Languages? languages;
  Translations? translations;
  List<int>? latlng;
  bool? landlocked;
  List<String>? borders;
  int? area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  int? population;
  Gini? gini;
  String? fifa;
  Car? car;
  List<String>? timezones;
  List<String>? continents;
  List<String>? flags;

  CountryModel(
      {this.name,
      this.tld,
      this.cca2,
      this.ccn3,
      this.cca3,
      this.cioc,
      this.independent,
      this.status,
      this.unMember,
      this.currencies,
      this.idd,
      this.capital,
      this.altSpellings,
      this.region,
      this.subregion,
      this.languages,
      this.translations,
      this.latlng,
      this.landlocked,
      this.borders,
      this.area,
      this.demonyms,
      this.flag,
      this.maps,
      this.population,
      this.gini,
      this.fifa,
      this.car,
      this.timezones,
      this.continents,
      this.flags});

  CountryModel.fromJson(Map<String, dynamic> json) {
    name = json['name'] != null ? Name?.fromJson(json['name']) : null;
    tld = json['tld'].cast<String>();
    cca2 = json['cca2'];
    ccn3 = json['ccn3'];
    cca3 = json['cca3'];
    cioc = json['cioc'];
    independent = json['independent'];
    status = json['status'];
    unMember = json['unMember'];
    currencies = json['currencies'] != null
        ? Currencies?.fromJson(json['currencies'])
        : null;
    idd = json['idd'] != null ? Idd?.fromJson(json['idd']) : null;
    capital = json['capital'].cast<String>();
    altSpellings = json['altSpellings'].cast<String>();
    region = json['region'];
    subregion = json['subregion'];
    languages = json['languages'] != null
        ? Languages?.fromJson(json['languages'])
        : null;
    translations = json['translations'] != null
        ? Translations?.fromJson(json['translations'])
        : null;
    latlng = json['latlng'].cast<int>();
    landlocked = json['landlocked'];
    borders = json['borders'].cast<String>();
    area = json['area'];
    demonyms =
        json['demonyms'] != null ? Demonyms?.fromJson(json['demonyms']) : null;
    flag = json['flag'];
    maps = json['maps'] != null ? Maps?.fromJson(json['maps']) : null;
    population = json['population'];
    gini = json['gini'] != null ? Gini?.fromJson(json['gini']) : null;
    fifa = json['fifa'];
    car = json['car'] != null ? Car?.fromJson(json['car']) : null;
    timezones = json['timezones'].cast<String>();
    continents = json['continents'].cast<String>();
    flags = json['flags'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (name != null) {
      data['name'] = name?.toJson();
    }
    data['tld'] = tld;
    data['cca2'] = cca2;
    data['ccn3'] = ccn3;
    data['cca3'] = cca3;
    data['cioc'] = cioc;
    data['independent'] = independent;
    data['status'] = status;
    data['unMember'] = unMember;
    if (currencies != null) {
      data['currencies'] = currencies?.toJson();
    }
    if (idd != null) {
      data['idd'] = idd?.toJson();
    }
    data['capital'] = capital;
    data['altSpellings'] = altSpellings;
    data['region'] = region;
    data['subregion'] = subregion;
    if (languages != null) {
      data['languages'] = languages?.toJson();
    }
    if (translations != null) {
      data['translations'] = translations?.toJson();
    }
    data['latlng'] = latlng;
    data['landlocked'] = landlocked;
    data['borders'] = borders;
    data['area'] = area;
    if (demonyms != null) {
      data['demonyms'] = demonyms?.toJson();
    }
    data['flag'] = flag;
    if (maps != null) {
      data['maps'] = maps?.toJson();
    }
    data['population'] = population;
    if (gini != null) {
      data['gini'] = gini?.toJson();
    }
    data['fifa'] = fifa;
    if (car != null) {
      data['car'] = car?.toJson();
    }
    data['timezones'] = timezones;
    data['continents'] = continents;
    data['flags'] = flags;
    return data;
  }
}

class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({this.common, this.official, this.nativeName});

  Name.fromJson(Map<String, dynamic> json) {
    common = json['common'];
    official = json['official'];
    nativeName = json['nativeName'] != null
        ? NativeName?.fromJson(json['nativeName'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['common'] = common;
    data['official'] = official;
    if (nativeName != null) {
      data['nativeName'] = nativeName?.toJson();
    }
    return data;
  }
}

class NativeName {
  Aym? aym;
  Aym? que;
  Aym? spa;

  NativeName({this.aym, this.que, this.spa});

  NativeName.fromJson(Map<String, dynamic> json) {
    aym = json['aym'] != null ? Aym?.fromJson(json['aym']) : null;
    que = json['que'] != null ? Aym?.fromJson(json['que']) : null;
    spa = json['spa'] != null ? Aym?.fromJson(json['spa']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (aym != null) {
      data['aym'] = aym?.toJson();
    }
    if (que != null) {
      data['que'] = que?.toJson();
    }
    if (spa != null) {
      data['spa'] = spa?.toJson();
    }
    return data;
  }
}

class Aym {
  String? official;
  String? common;

  Aym({this.official, this.common});

  Aym.fromJson(Map<String, dynamic> json) {
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['official'] = official;
    data['common'] = common;
    return data;
  }
}

class Currencies {
  PEN? pEN;

  Currencies({this.pEN});

  Currencies.fromJson(Map<String, dynamic> json) {
    pEN = json['PEN'] != null ? PEN?.fromJson(json['PEN']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (pEN != null) {
      data['PEN'] = pEN?.toJson();
    }
    return data;
  }
}

class PEN {
  String? name;
  String? symbol;

  PEN({this.name, this.symbol});

  PEN.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['symbol'] = symbol;
    return data;
  }
}

class Idd {
  String? root;
  List<String>? suffixes;

  Idd({this.root, this.suffixes});

  Idd.fromJson(Map<String, dynamic> json) {
    root = json['root'];
    suffixes = json['suffixes'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['root'] = root;
    data['suffixes'] = suffixes;
    return data;
  }
}

class Languages {
  String? aym;
  String? que;
  String? spa;

  Languages({this.aym, this.que, this.spa});

  Languages.fromJson(Map<String, dynamic> json) {
    aym = json['aym'];
    que = json['que'];
    spa = json['spa'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['aym'] = aym;
    data['que'] = que;
    data['spa'] = spa;
    return data;
  }
}

class Translations {
  Aym? ara;
  Aym? bre;
  Aym? ces;
  Aym? cym;
  Aym? deu;
  Aym? est;
  Aym? fin;
  Eng? fra;
  Aym? hrv;
  Aym? hun;
  Aym? ita;
  Aym? jpn;
  Aym? kor;
  Aym? nld;
  Aym? per;
  Aym? pol;
  Aym? por;
  Aym? rus;
  Aym? slk;
  Aym? spa;
  Aym? swe;
  Aym? urd;
  Aym? zho;

  Translations(
      {this.ara,
      this.bre,
      this.ces,
      this.cym,
      this.deu,
      this.est,
      this.fin,
      this.fra,
      this.hrv,
      this.hun,
      this.ita,
      this.jpn,
      this.kor,
      this.nld,
      this.per,
      this.pol,
      this.por,
      this.rus,
      this.slk,
      this.spa,
      this.swe,
      this.urd,
      this.zho});

  Translations.fromJson(Map<String, dynamic> json) {
    ara = json['ara'] != null ? Aym?.fromJson(json['ara']) : null;
    bre = json['bre'] != null ? Aym?.fromJson(json['bre']) : null;
    ces = json['ces'] != null ? Aym?.fromJson(json['ces']) : null;
    cym = json['cym'] != null ? Aym?.fromJson(json['cym']) : null;
    deu = json['deu'] != null ? Aym?.fromJson(json['deu']) : null;
    est = json['est'] != null ? Aym?.fromJson(json['est']) : null;
    fin = json['fin'] != null ? Aym?.fromJson(json['fin']) : null;
    fra = json['fra'] != null ? Eng?.fromJson(json['fra']) : null;
    hrv = json['hrv'] != null ? Aym?.fromJson(json['hrv']) : null;
    hun = json['hun'] != null ? Aym?.fromJson(json['hun']) : null;
    ita = json['ita'] != null ? Aym?.fromJson(json['ita']) : null;
    jpn = json['jpn'] != null ? Aym?.fromJson(json['jpn']) : null;
    kor = json['kor'] != null ? Aym?.fromJson(json['kor']) : null;
    nld = json['nld'] != null ? Aym?.fromJson(json['nld']) : null;
    per = json['per'] != null ? Aym?.fromJson(json['per']) : null;
    pol = json['pol'] != null ? Aym?.fromJson(json['pol']) : null;
    por = json['por'] != null ? Aym?.fromJson(json['por']) : null;
    rus = json['rus'] != null ? Aym?.fromJson(json['rus']) : null;
    slk = json['slk'] != null ? Aym?.fromJson(json['slk']) : null;
    spa = json['spa'] != null ? Aym?.fromJson(json['spa']) : null;
    swe = json['swe'] != null ? Aym?.fromJson(json['swe']) : null;
    urd = json['urd'] != null ? Aym?.fromJson(json['urd']) : null;
    zho = json['zho'] != null ? Aym?.fromJson(json['zho']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (ara != null) {
      data['ara'] = ara?.toJson();
    }
    if (bre != null) {
      data['bre'] = bre?.toJson();
    }
    if (ces != null) {
      data['ces'] = ces?.toJson();
    }
    if (cym != null) {
      data['cym'] = cym?.toJson();
    }
    if (deu != null) {
      data['deu'] = deu?.toJson();
    }
    if (est != null) {
      data['est'] = est?.toJson();
    }
    if (fin != null) {
      data['fin'] = fin?.toJson();
    }
    if (fra != null) {
      data['fra'] = fra?.toJson();
    }
    if (hrv != null) {
      data['hrv'] = hrv?.toJson();
    }
    if (hun != null) {
      data['hun'] = hun?.toJson();
    }
    if (ita != null) {
      data['ita'] = ita?.toJson();
    }
    if (jpn != null) {
      data['jpn'] = jpn?.toJson();
    }
    if (kor != null) {
      data['kor'] = kor?.toJson();
    }
    if (nld != null) {
      data['nld'] = nld?.toJson();
    }
    if (per != null) {
      data['per'] = per?.toJson();
    }
    if (pol != null) {
      data['pol'] = pol?.toJson();
    }
    if (por != null) {
      data['por'] = por?.toJson();
    }
    if (rus != null) {
      data['rus'] = rus?.toJson();
    }
    if (slk != null) {
      data['slk'] = slk?.toJson();
    }
    if (spa != null) {
      data['spa'] = spa?.toJson();
    }
    if (swe != null) {
      data['swe'] = swe?.toJson();
    }
    if (urd != null) {
      data['urd'] = urd?.toJson();
    }
    if (zho != null) {
      data['zho'] = zho?.toJson();
    }
    return data;
  }
}

class Demonyms {
  Eng? eng;
  Eng? fra;

  Demonyms({this.eng, this.fra});

  Demonyms.fromJson(Map<String, dynamic> json) {
    eng = json['eng'] != null ? Eng?.fromJson(json['eng']) : null;
    fra = json['fra'] != null ? Eng?.fromJson(json['fra']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (eng != null) {
      data['eng'] = eng?.toJson();
    }
    if (fra != null) {
      data['fra'] = fra?.toJson();
    }
    return data;
  }
}

class Eng {
  String? f;
  String? m;

  Eng({this.f, this.m});

  Eng.fromJson(Map<String, dynamic> json) {
    f = json['f'];
    m = json['m'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['f'] = f;
    data['m'] = m;
    return data;
  }
}

class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({this.googleMaps, this.openStreetMaps});

  Maps.fromJson(Map<String, dynamic> json) {
    googleMaps = json['googleMaps'];
    openStreetMaps = json['openStreetMaps'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['googleMaps'] = googleMaps;
    data['openStreetMaps'] = openStreetMaps;
    return data;
  }
}

class Gini {
  double? d2019;

  Gini({this.d2019});

  Gini.fromJson(Map<String, dynamic> json) {
    d2019 = json['2019'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['2019'] = d2019;
    return data;
  }
}

class Car {
  List<String>? signs;
  String? side;

  Car({this.signs, this.side});

  Car.fromJson(Map<String, dynamic> json) {
    signs = json['signs'].cast<String>();
    side = json['side'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['signs'] = signs;
    data['side'] = side;
    return data;
  }
}
