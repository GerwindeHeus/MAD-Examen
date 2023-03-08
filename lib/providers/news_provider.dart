import 'package:madexamn/models/news.dart';
import 'package:flutter/material.dart';

class NewsProvider with ChangeNotifier {
  List<News> _items = [
    News(
      id: 'p1',
      title: 'Liverpool-fans',
      description:
          'De UEFA vergoedt de kaartjes van alle 19.618 Liverpool-supporters die vorig jaar naar Parijs waren afgereisd voor de veelbesproken Champions League-finale tegen Real Madrid. Duizenden Engelse fans kwamen.',
      kern:
          'Het weigeren van de Liverpool-supporters leidde tot chaos bij de poorten van het Stade de France. Sommige fans probeerden over de hekken te klimmen om de finale niet te missen. De Franse politie gebruikte traangas om de Engelse fans buiten de stadionpoorten te houden. Veel onschuldige mensen waren daar de dupe van. Volgens de UEFA ontstond het probleem doordat er valse kaarten in omloop waren. Onafhankelijke onderzoekers hebben geconcludeerd dat de UEFA nalatig is geweest op.',
      imageUrl: 'https://media.nu.nl/m/pjixpnkad6de_wd854/liverpool.jpg',
    ),
    News(
      id: 'p2',
      title: 'ticketsysteem',
      description:
          'Het Rijksmuseum heeft de problemen met het systeem voor de ticketverkoop opgelost. Een woordvoerder van het museum laat weten dat er weer kaarten voor de tentoonstelling Vermeer worden verkocht.',
      kern:
          'Maandag gingen extra tickets voor de expositie in de verkoop, waardoor een stormloop ontstond en de website van het Rijksmuseum plat kwam te liggen. De extra tickets kwamen beschikbaar doordat het museum meer avonden aanbiedt en de sluitingstijd heeft opgerekt tot 23.00 uur. Vanwege de grote vraag krijgen consumenten nu gedoseerd toegang tot de ticketsite. "Hierdoor kan het zijn dat de onlineticketshop korte tijd even gesloten is", vertelt de woordvoerder.',
      imageUrl:
          'https://media.nu.nl/m/wbzxgruafy1r_wd854/meisje-met-de-parel.jpg',
    ),
    News(
      id: 'p3',
      title: 'Zangeres FKA',
      description:
          'Zangeres FKA twigs heeft een relatie met fotograaf Jordan Hemingway. Ze deelt het nieuws zelf op Instagram na een oproep van Daily Mail. De Britse krant riep lezers op de nieuwe geliefde van de artieste te identificeren op paparazzifotos.',
      kern:
          '"Ik word mijn hele carrière al achtervolgd om wie ik aan het daten ben, dus deze keer neem ik het heft in eigen handen", schrijft de zangeres. "Zijn naam is Jordan Hemingway, een mooie artiest wiens hart mijn geloof in de liefde heeft hersteld. "Paparazzifotos zien er nooit goed uit, dus swipe hier maar voor wat hete fotos, schrijft ze bij enkele beelden van haar vriend. "En nu ga ik graag weer terug naar mijn fijne privéleven met mijn honden."',
      imageUrl: 'https://media.nu.nl/m/2aqx410a4crg_wd854/fka-twigs.jpg',
    ),
    News(
      id: 'p4',
      title: 'FC Groningen',
      description:
          'FC Groningen heeft bij de KNVB zijn ongenoegen geuit over de veelbesproken rode kaart van Isak Määttä tijdens de uitwedstrijd tegen Feyenoord (1-0). De Groningers vinden de straf voor de vleugelverdediger onredelijk.',
      kern:
          'Määttä kreeg zaterdag zijn tweede gele kaart van scheidsrechter Joey Kooij, omdat hij de bal tegen de voor hem op de grond gevallen Alireza Jahanbakhsh had aangeschoten. Kooij beoordeelde het als "onsportief gedrag", maar de Groningers kunnen zich daar niet in vinden. "We zijn verbolgen en wilden een geluid laten horen richting de KNVB.',
      imageUrl:
          'https://media.nu.nl/m/fuuxdekaqhxy_wd854/fc-groningen-stuurt-boze-brief-naar-knvb-na-veelbesproken-rood-in-de-kuip.jpg',
    ),
  ];

  List<News> get items {
    return _items;
  }

  // void addProduct(value) {
  //   _items.add(value);
  //   notifyListeners();
  // }
}
