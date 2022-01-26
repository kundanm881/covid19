class GlobleCaseModal {
  int updated;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int todayRecovered;
  int active;
  int critical;
  int casesPerOneMillion;
  double deathsPerOneMillion;
  int tests;
  double testsPerOneMillion;
  int population;
  int oneCasePerPeople;
  int oneDeathPerPeople;
  int oneTestPerPeople;
  double activePerOneMillion;
  double recoveredPerOneMillion;
  double criticalPerOneMillion;
  int affectedCountries;
  GlobleCaseModal({
    required this.updated,
    required this.cases,
    required this.todayCases,
    required this.deaths,
    required this.todayDeaths,
    required this.recovered,
    required this.todayRecovered,
    required this.active,
    required this.critical,
    required this.casesPerOneMillion,
    required this.deathsPerOneMillion,
    required this.tests,
    required this.testsPerOneMillion,
    required this.population,
    required this.oneCasePerPeople,
    required this.oneDeathPerPeople,
    required this.oneTestPerPeople,
    required this.activePerOneMillion,
    required this.recoveredPerOneMillion,
    required this.criticalPerOneMillion,
    required this.affectedCountries,
  });

  // GlobleCaseModal.fromJson(Map<String, dynamic> json) {
  //   updated = json['updated'];
  //   cases = json['cases'];
  //   todayCases = json['todayCases'];
  //   deaths = json['deaths'];
  //   todayDeaths = json['todayDeaths'];
  //   recovered = json['recovered'];
  //   todayRecovered = json['todayRecovered'];
  //   active = json['active'];
  //   critical = json['critical'];
  //   casesPerOneMillion = json['casesPerOneMillion'];
  //   deathsPerOneMillion = json['deathsPerOneMillion'];
  //   tests = json['tests'];
  //   testsPerOneMillion = json['testsPerOneMillion'];
  //   population = json['population'];
  //   oneCasePerPeople = json['oneCasePerPeople'];
  //   oneDeathPerPeople = json['oneDeathPerPeople'];
  //   oneTestPerPeople = json['oneTestPerPeople'];
  //   activePerOneMillion = json['activePerOneMillion'];
  //   recoveredPerOneMillion = json['recoveredPerOneMillion'];
  //   criticalPerOneMillion = json['criticalPerOneMillion'];
  //   affectedCountries = json['affectedCountries'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['updated'] = this.updated;
  //   data['cases'] = this.cases;
  //   data['todayCases'] = this.todayCases;
  //   data['deaths'] = this.deaths;
  //   data['todayDeaths'] = this.todayDeaths;
  //   data['recovered'] = this.recovered;
  //   data['todayRecovered'] = this.todayRecovered;
  //   data['active'] = this.active;
  //   data['critical'] = this.critical;
  //   data['casesPerOneMillion'] = this.casesPerOneMillion;
  //   data['deathsPerOneMillion'] = this.deathsPerOneMillion;
  //   data['tests'] = this.tests;
  //   data['testsPerOneMillion'] = this.testsPerOneMillion;
  //   data['population'] = this.population;
  //   data['oneCasePerPeople'] = this.oneCasePerPeople;
  //   data['oneDeathPerPeople'] = this.oneDeathPerPeople;
  //   data['oneTestPerPeople'] = this.oneTestPerPeople;
  //   data['activePerOneMillion'] = this.activePerOneMillion;
  //   data['recoveredPerOneMillion'] = this.recoveredPerOneMillion;
  //   data['criticalPerOneMillion'] = this.criticalPerOneMillion;
  //   data['affectedCountries'] = this.affectedCountries;
  //   return data;
  // }

  Map<String, dynamic> tojson() {
    return {
      'updated': updated,
      'cases': cases,
      'todayCases': todayCases,
      'deaths': deaths,
      'todayDeaths': todayDeaths,
      'recovered': recovered,
      'todayRecovered': todayRecovered,
      'active': active,
      'critical': critical,
      'casesPerOneMillion': casesPerOneMillion,
      'deathsPerOneMillion': deathsPerOneMillion,
      'tests': tests,
      'testsPerOneMillion': testsPerOneMillion,
      'population': population,
      'oneCasePerPeople': oneCasePerPeople,
      'oneDeathPerPeople': oneDeathPerPeople,
      'oneTestPerPeople': oneTestPerPeople,
      'activePerOneMillion': activePerOneMillion,
      'recoveredPerOneMillion': recoveredPerOneMillion,
      'criticalPerOneMillion': criticalPerOneMillion,
      'affectedCountries': affectedCountries,
    };
  }

  factory GlobleCaseModal.fromjson(Map<String, dynamic> map) {
    return GlobleCaseModal(
      updated: map['updated']?.toInt() ?? 0,
      cases: map['cases']?.toInt() ?? 0,
      todayCases: map['todayCases']?.toInt() ?? 0,
      deaths: map['deaths']?.toInt() ?? 0,
      todayDeaths: map['todayDeaths']?.toInt() ?? 0,
      recovered: map['recovered']?.toInt() ?? 0,
      todayRecovered: map['todayRecovered']?.toInt() ?? 0,
      active: map['active']?.toInt() ?? 0,
      critical: map['critical']?.toInt() ?? 0,
      casesPerOneMillion: map['casesPerOneMillion']?.toInt() ?? 0,
      deathsPerOneMillion: map['deathsPerOneMillion']?.toDouble() ?? 0.0,
      tests: map['tests']?.toInt() ?? 0,
      testsPerOneMillion: map['testsPerOneMillion']?.toDouble() ?? 0.0,
      population: map['population']?.toInt() ?? 0,
      oneCasePerPeople: map['oneCasePerPeople']?.toInt() ?? 0,
      oneDeathPerPeople: map['oneDeathPerPeople']?.toInt() ?? 0,
      oneTestPerPeople: map['oneTestPerPeople']?.toInt() ?? 0,
      activePerOneMillion: map['activePerOneMillion']?.toDouble() ?? 0.0,
      recoveredPerOneMillion: map['recoveredPerOneMillion']?.toDouble() ?? 0.0,
      criticalPerOneMillion: map['criticalPerOneMillion']?.toDouble() ?? 0.0,
      affectedCountries: map['affectedCountries']?.toInt() ?? 0,
    );
  }
}
