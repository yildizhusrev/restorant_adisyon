class MasaGrubu {
  MasaGrubu(int id, String ad) {
    this.ad = ad;
    this.id = id;
  } // Sondaki virgule dikkat!
  int id;
  String ad;
 
}

class Masa {
  Masa(int id, int masaId, String ad) {
    this.ad = ad;
    this.id = id;
    this.masaId = masaId;
  } // Sondaki virgule dikkat!
  int id;
  int masaId;
  String ad;

 
}

class Restorant {

   List<MasaGrubu> getMasaGruplari() {
    List<MasaGrubu> liste = List<MasaGrubu>();
    liste.add(MasaGrubu(1, "Teras"));
    liste.add(MasaGrubu(2, "Balkon"));
    liste.add(MasaGrubu(2, "Orta Alan"));
    liste.add(MasaGrubu(3, "Bahçe"));
    return liste;
  }

   List<Masa> getMasalar() {
    List<Masa> liste = List<Masa>();
    for (var i = 1; i < 5; i++) {
      for (var k = 0; k < 15; i++) {
        liste.add(Masa(k, i, "Masa " + k.toString()));
      }
    }
    return liste;
  }
}
