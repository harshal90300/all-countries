class AllCountriesModal {
  Name? name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
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
  List<dynamic>? latlng;
  bool? landlocked;
  dynamic? area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  dynamic? population;
  Car? car;
  List<String>? timezones;
  List<String>? continents;
  Flags? flags;
  CoatOfArms? coatOfArms;
  String? startOfWeek;
  CapitalInfo? capitalInfo;
  PostalCode? postalCode;
  String? cioc;
  // Gini? gini;
  String? fifa;
  List<String>? borders;

  AllCountriesModal(
      {this.name,
      this.tld,
      this.cca2,
      this.ccn3,
      this.cca3,
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
      this.area,
      this.demonyms,
      this.flag,
      this.maps,
      this.population,
      this.car,
      this.timezones,
      this.continents,
      this.flags,
      this.coatOfArms,
      this.startOfWeek,
      this.capitalInfo,
      this.postalCode,
      this.cioc,
      // this.gini,
      this.fifa,
      this.borders});

  AllCountriesModal.fromJson(Map<String, dynamic> json) {
    name = json["name"] == null ? null : Name.fromJson(json["name"]);
    tld = json["tld"] == null ? null : List<String>.from(json["tld"]);
    cca2 = json["cca2"];
    ccn3 = json["ccn3"];
    cca3 = json["cca3"];
    independent = json["independent"];
    status = json["status"];
    unMember = json["unMember"];
    currencies = json["currencies"] == null
        ? null
        : Currencies.fromJson(json["currencies"]);
    idd = json["idd"] == null ? null : Idd.fromJson(json["idd"]);
    capital =
        json["capital"] == null ? null : List<String>.from(json["capital"]);
    altSpellings = json["altSpellings"] == null
        ? null
        : List<String>.from(json["altSpellings"]);
    region = json["region"];
    subregion = json["subregion"];
    languages = json["languages"] == null
        ? null
        : Languages.fromJson(json["languages"]);
    translations = json["translations"] == null
        ? null
        : Translations.fromJson(json["translations"]);
    latlng = json["latlng"] == null ? null : List<dynamic>.from(json["latlng"]);
    landlocked = json["landlocked"];
    area = json["area"];
    demonyms =
        json["demonyms"] == null ? null : Demonyms.fromJson(json["demonyms"]);
    flag = json["flag"];
    maps = json["maps"] == null ? null : Maps.fromJson(json["maps"]);
    population = json["population"];
    car = json["car"] == null ? null : Car.fromJson(json["car"]);
    timezones =
        json["timezones"] == null ? null : List<String>.from(json["timezones"]);
    continents = json["continents"] == null
        ? null
        : List<String>.from(json["continents"]);
    flags = json["flags"] == null ? null : Flags.fromJson(json["flags"]);
    coatOfArms = json["coatOfArms"] == null
        ? null
        : CoatOfArms.fromJson(json["coatOfArms"]);
    startOfWeek = json["startOfWeek"];
    capitalInfo = json["capitalInfo"] == null
        ? null
        : CapitalInfo.fromJson(json["capitalInfo"]);
    postalCode = json["postalCode"] == null
        ? null
        : PostalCode.fromJson(json["postalCode"]);
    cioc = json["cioc"];
    // gini = json["gini"] == null ? null : Gini.fromJson(json["gini"]);
    fifa = json["fifa"];
    borders =
        json["borders"] == null ? null : List<String>.from(json["borders"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (name != null) {
      _data["name"] = name?.toJson();
    }
    if (tld != null) {
      _data["tld"] = tld;
    }
    _data["cca2"] = cca2;
    _data["ccn3"] = ccn3;
    _data["cca3"] = cca3;
    _data["independent"] = independent;
    _data["status"] = status;
    _data["unMember"] = unMember;
    if (currencies != null) {
      _data["currencies"] = currencies?.toJson();
    }
    if (idd != null) {
      _data["idd"] = idd?.toJson();
    }
    if (capital != null) {
      _data["capital"] = capital;
    }
    if (altSpellings != null) {
      _data["altSpellings"] = altSpellings;
    }
    _data["region"] = region;
    _data["subregion"] = subregion;
    if (languages != null) {
      _data["languages"] = languages?.toJson();
    }
    if (translations != null) {
      _data["translations"] = translations?.toJson();
    }
    if (latlng != null) {
      _data["latlng"] = latlng;
    }
    _data["landlocked"] = landlocked;
    _data["area"] = area;
    if (demonyms != null) {
      _data["demonyms"] = demonyms?.toJson();
    }
    _data["flag"] = flag;
    if (maps != null) {
      _data["maps"] = maps?.toJson();
    }
    _data["population"] = population;
    if (car != null) {
      _data["car"] = car?.toJson();
    }
    if (timezones != null) {
      _data["timezones"] = timezones;
    }
    if (continents != null) {
      _data["continents"] = continents;
    }
    if (flags != null) {
      _data["flags"] = flags?.toJson();
    }
    if (coatOfArms != null) {
      _data["coatOfArms"] = coatOfArms?.toJson();
    }
    _data["startOfWeek"] = startOfWeek;
    if (capitalInfo != null) {
      _data["capitalInfo"] = capitalInfo?.toJson();
    }
    if (postalCode != null) {
      _data["postalCode"] = postalCode?.toJson();
    }
    _data["cioc"] = cioc;
    // if (gini != null) {
    //   _data["gini"] = gini?.toJson();
    // }
    _data["fifa"] = fifa;
    if (borders != null) {
      _data["borders"] = borders;
    }
    return _data;
  }

  static List<AllCountriesModal> getCountries(List ofCountries) {
    return ofCountries.map((e) => AllCountriesModal.fromJson(e)).toList();
  }
}

// class Gini {
//     double core ?= 2016;

//     Gini({this.2016});

//     Gini.fromJson(Map<String, dynamic> json) {
//         2016 = json["2016"];
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> _data = <String, dynamic>{};
//         _data["2016"] = 2016;
//         return _data;
//     }
// }

class PostalCode {
  String? format;
  String? regex;

  PostalCode({this.format, this.regex});

  PostalCode.fromJson(Map<String, dynamic> json) {
    format = json["format"];
    regex = json["regex"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["format"] = format;
    _data["regex"] = regex;
    return _data;
  }
}

class CapitalInfo {
  List<double>? latlng;

  CapitalInfo({this.latlng});

  CapitalInfo.fromJson(Map<String, dynamic> json) {
    latlng = json["latlng"] == null ? null : List<double>.from(json["latlng"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (latlng != null) {
      _data["latlng"] = latlng;
    }
    return _data;
  }
}

class CoatOfArms {
  String? png;
  String? svg;

  CoatOfArms({this.png, this.svg});

  CoatOfArms.fromJson(Map<String, dynamic> json) {
    png = json["png"];
    svg = json["svg"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["png"] = png;
    _data["svg"] = svg;
    return _data;
  }
}

class Flags {
  String? png;
  String? svg;
  String? alt;

  Flags({this.png, this.svg, this.alt});

  Flags.fromJson(Map<String, dynamic> json) {
    png = json["png"];
    svg = json["svg"];
    alt = json["alt"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["png"] = png;
    _data["svg"] = svg;
    _data["alt"] = alt;
    return _data;
  }
}

class Car {
  List<String>? signs;
  String? side;

  Car({this.signs, this.side});

  Car.fromJson(Map<String, dynamic> json) {
    signs = json["signs"] == null ? null : List<String>.from(json["signs"]);
    side = json["side"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (signs != null) {
      _data["signs"] = signs;
    }
    _data["side"] = side;
    return _data;
  }
}

class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({this.googleMaps, this.openStreetMaps});

  Maps.fromJson(Map<String, dynamic> json) {
    googleMaps = json["googleMaps"];
    openStreetMaps = json["openStreetMaps"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["googleMaps"] = googleMaps;
    _data["openStreetMaps"] = openStreetMaps;
    return _data;
  }
}

class Demonyms {
  Eng1? eng;
  Fra1? fra;

  Demonyms({this.eng, this.fra});

  Demonyms.fromJson(Map<String, dynamic> json) {
    eng = json["eng"] == null ? null : Eng1.fromJson(json["eng"]);
    fra = json["fra"] == null ? null : Fra1.fromJson(json["fra"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (eng != null) {
      _data["eng"] = eng?.toJson();
    }
    if (fra != null) {
      _data["fra"] = fra?.toJson();
    }
    return _data;
  }
}

class Fra1 {
  String? f;
  String? m;

  Fra1({this.f, this.m});

  Fra1.fromJson(Map<String, dynamic> json) {
    f = json["f"];
    m = json["m"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["f"] = f;
    _data["m"] = m;
    return _data;
  }
}

class Eng1 {
  String? f;
  String? m;

  Eng1({this.f, this.m});

  Eng1.fromJson(Map<String, dynamic> json) {
    f = json["f"];
    m = json["m"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["f"] = f;
    _data["m"] = m;
    return _data;
  }
}

class Translations {
  Ara? ara;
  Bre? bre;
  Ces? ces;
  Cym? cym;
  Deu? deu;
  Est? est;
  Fin? fin;
  Fra? fra;
  Hrv? hrv;
  Hun? hun;
  Ita? ita;
  Jpn? jpn;
  Kor? kor;
  Nld? nld;
  Per? per;
  Pol? pol;
  Por? por;
  Rus? rus;
  Slk? slk;
  Spa? spa;
  Srp? srp;
  Swe? swe;
  Tur? tur;
  Urd? urd;
  Zho? zho;

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
      this.srp,
      this.swe,
      this.tur,
      this.urd,
      this.zho});

  Translations.fromJson(Map<String, dynamic> json) {
    ara = json["ara"] == null ? null : Ara.fromJson(json["ara"]);
    bre = json["bre"] == null ? null : Bre.fromJson(json["bre"]);
    ces = json["ces"] == null ? null : Ces.fromJson(json["ces"]);
    cym = json["cym"] == null ? null : Cym.fromJson(json["cym"]);
    deu = json["deu"] == null ? null : Deu.fromJson(json["deu"]);
    est = json["est"] == null ? null : Est.fromJson(json["est"]);
    fin = json["fin"] == null ? null : Fin.fromJson(json["fin"]);
    fra = json["fra"] == null ? null : Fra.fromJson(json["fra"]);
    hrv = json["hrv"] == null ? null : Hrv.fromJson(json["hrv"]);
    hun = json["hun"] == null ? null : Hun.fromJson(json["hun"]);
    ita = json["ita"] == null ? null : Ita.fromJson(json["ita"]);
    jpn = json["jpn"] == null ? null : Jpn.fromJson(json["jpn"]);
    kor = json["kor"] == null ? null : Kor.fromJson(json["kor"]);
    nld = json["nld"] == null ? null : Nld.fromJson(json["nld"]);
    per = json["per"] == null ? null : Per.fromJson(json["per"]);
    pol = json["pol"] == null ? null : Pol.fromJson(json["pol"]);
    por = json["por"] == null ? null : Por.fromJson(json["por"]);
    rus = json["rus"] == null ? null : Rus.fromJson(json["rus"]);
    slk = json["slk"] == null ? null : Slk.fromJson(json["slk"]);
    spa = json["spa"] == null ? null : Spa.fromJson(json["spa"]);
    srp = json["srp"] == null ? null : Srp.fromJson(json["srp"]);
    swe = json["swe"] == null ? null : Swe.fromJson(json["swe"]);
    tur = json["tur"] == null ? null : Tur.fromJson(json["tur"]);
    urd = json["urd"] == null ? null : Urd.fromJson(json["urd"]);
    zho = json["zho"] == null ? null : Zho.fromJson(json["zho"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (ara != null) {
      _data["ara"] = ara?.toJson();
    }
    if (bre != null) {
      _data["bre"] = bre?.toJson();
    }
    if (ces != null) {
      _data["ces"] = ces?.toJson();
    }
    if (cym != null) {
      _data["cym"] = cym?.toJson();
    }
    if (deu != null) {
      _data["deu"] = deu?.toJson();
    }
    if (est != null) {
      _data["est"] = est?.toJson();
    }
    if (fin != null) {
      _data["fin"] = fin?.toJson();
    }
    if (fra != null) {
      _data["fra"] = fra?.toJson();
    }
    if (hrv != null) {
      _data["hrv"] = hrv?.toJson();
    }
    if (hun != null) {
      _data["hun"] = hun?.toJson();
    }
    if (ita != null) {
      _data["ita"] = ita?.toJson();
    }
    if (jpn != null) {
      _data["jpn"] = jpn?.toJson();
    }
    if (kor != null) {
      _data["kor"] = kor?.toJson();
    }
    if (nld != null) {
      _data["nld"] = nld?.toJson();
    }
    if (per != null) {
      _data["per"] = per?.toJson();
    }
    if (pol != null) {
      _data["pol"] = pol?.toJson();
    }
    if (por != null) {
      _data["por"] = por?.toJson();
    }
    if (rus != null) {
      _data["rus"] = rus?.toJson();
    }
    if (slk != null) {
      _data["slk"] = slk?.toJson();
    }
    if (spa != null) {
      _data["spa"] = spa?.toJson();
    }
    if (srp != null) {
      _data["srp"] = srp?.toJson();
    }
    if (swe != null) {
      _data["swe"] = swe?.toJson();
    }
    if (tur != null) {
      _data["tur"] = tur?.toJson();
    }
    if (urd != null) {
      _data["urd"] = urd?.toJson();
    }
    if (zho != null) {
      _data["zho"] = zho?.toJson();
    }
    return _data;
  }
}

class Zho {
  String? official;
  String? common;

  Zho({this.official, this.common});

  Zho.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Urd {
  String? official;
  String? common;

  Urd({this.official, this.common});

  Urd.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Tur {
  String? official;
  String? common;

  Tur({this.official, this.common});

  Tur.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Swe {
  String? official;
  String? common;

  Swe({this.official, this.common});

  Swe.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Srp {
  String? official;
  String? common;

  Srp({this.official, this.common});

  Srp.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Spa {
  String? official;
  String? common;

  Spa({this.official, this.common});

  Spa.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Slk {
  String? official;
  String? common;

  Slk({this.official, this.common});

  Slk.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Rus {
  String? official;
  String? common;

  Rus({this.official, this.common});

  Rus.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Por {
  String? official;
  String? common;

  Por({this.official, this.common});

  Por.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Pol {
  String? official;
  String? common;

  Pol({this.official, this.common});

  Pol.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Per {
  String? official;
  String? common;

  Per({this.official, this.common});

  Per.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Nld {
  String? official;
  String? common;

  Nld({this.official, this.common});

  Nld.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Kor {
  String? official;
  String? common;

  Kor({this.official, this.common});

  Kor.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Jpn {
  String? official;
  String? common;

  Jpn({this.official, this.common});

  Jpn.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Ita {
  String? official;
  String? common;

  Ita({this.official, this.common});

  Ita.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Hun {
  String? official;
  String? common;

  Hun({this.official, this.common});

  Hun.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Hrv {
  String? official;
  String? common;

  Hrv({this.official, this.common});

  Hrv.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Fra {
  String? official;
  String? common;

  Fra({this.official, this.common});

  Fra.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Fin {
  String? official;
  String? common;

  Fin({this.official, this.common});

  Fin.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Est {
  String? official;
  String? common;

  Est({this.official, this.common});

  Est.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Deu {
  String? official;
  String? common;

  Deu({this.official, this.common});

  Deu.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Cym {
  String? official;
  String? common;

  Cym({this.official, this.common});

  Cym.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Ces {
  String? official;
  String? common;

  Ces({this.official, this.common});

  Ces.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Bre {
  String? official;
  String? common;

  Bre({this.official, this.common});

  Bre.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Ara {
  String? official;
  String? common;

  Ara({this.official, this.common});

  Ara.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Languages {
  String? eng;
  String? swa;

  Languages({this.eng, this.swa});

  Languages.fromJson(Map<String, dynamic> json) {
    eng = json["eng"];
    swa = json["swa"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["eng"] = eng;
    _data["swa"] = swa;
    return _data;
  }
}

class Idd {
  String? root;
  List<String>? suffixes;

  Idd({this.root, this.suffixes});

  Idd.fromJson(Map<String, dynamic> json) {
    root = json["root"];
    suffixes =
        json["suffixes"] == null ? null : List<String>.from(json["suffixes"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["root"] = root;
    if (suffixes != null) {
      _data["suffixes"] = suffixes;
    }
    return _data;
  }
}

class Currencies {
  Ugx? ugx;

  Currencies({this.ugx});

  Currencies.fromJson(Map<String, dynamic> json) {
    ugx = json["UGX"] == null ? null : Ugx.fromJson(json["UGX"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (ugx != null) {
      _data["UGX"] = ugx?.toJson();
    }
    return _data;
  }
}

class Ugx {
  String? name;
  String? symbol;

  Ugx({this.name, this.symbol});

  Ugx.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    symbol = json["symbol"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["symbol"] = symbol;
    return _data;
  }
}

class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({this.common, this.official, this.nativeName});

  Name.fromJson(Map<String, dynamic> json) {
    common = json["common"];
    official = json["official"];
    nativeName = json["nativeName"] == null
        ? null
        : NativeName.fromJson(json["nativeName"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["common"] = common;
    _data["official"] = official;
    if (nativeName != null) {
      _data["nativeName"] = nativeName?.toJson();
    }
    return _data;
  }
}

class NativeName {
  Eng? eng;
  Swa? swa;

  NativeName({this.eng, this.swa});

  NativeName.fromJson(Map<String, dynamic> json) {
    eng = json["eng"] == null ? null : Eng.fromJson(json["eng"]);
    swa = json["swa"] == null ? null : Swa.fromJson(json["swa"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (eng != null) {
      _data["eng"] = eng?.toJson();
    }
    if (swa != null) {
      _data["swa"] = swa?.toJson();
    }
    return _data;
  }
}

class Swa {
  String? official;
  String? common;

  Swa({this.official, this.common});

  Swa.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}

class Eng {
  String? official;
  String? common;

  Eng({this.official, this.common});

  Eng.fromJson(Map<String, dynamic> json) {
    official = json["official"];
    common = json["common"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["official"] = official;
    _data["common"] = common;
    return _data;
  }
}
