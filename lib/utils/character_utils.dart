class CharacterUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? youtubeLink;
  final String? webLink;

  CharacterUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.youtubeLink,
    this.webLink,
  });
}

List<CharacterUtils> charactersList = [
  CharacterUtils(
    image: 'assets/admiralgwiezdnejfloty.webp',
    title: 'Admiral Maurycjusz Borubar',
    subtitle:
        'Chodzi o pierwszą z osób na tym stanowisku, jaką poznaliśmy w całej historii. Darzył Bombę tak wielką sympatią, że bezgranicznie mu ufał, posyłając na niemal każdą misję.',
  ),
  CharacterUtils(
    image: 'assets/chorazytorpeda.png',
    title: 'Chorąży J.J. Torpeda',
    subtitle:
        'Rywalizuje z Bombą od lat, także na poziomie wzajemnego ubliżania sobie nawzajem - kapitan do bólu wykorzystuje osobliwy sposób bycia Torpedy.',
    webLink: 'https://filmy.fandom.com/wiki/Chor%C4%85%C5%BCy_Torpeda',
  ),
  CharacterUtils(
    image: 'assets/kapitantytusbomba.png',
    title: 'Kapitan Tytus Bomba',
    subtitle:
        'Dowódca legendarnego Orzeła 7, pasjonat wojskowości, nałogowy pochłaniacz hot-dogów.',
  ),
  CharacterUtils(
    image: 'assets/sebastianbak.png',
    title: 'Sebastian Bąk',
    subtitle:
        'Typ gawędziarza, niczym Sokrates zadającego swoim rozmówcom pytania z zakresu (pseudo)filozoficznego.',
  ),
];
