import 'package:test_webview/news.dart';

class NewsProvider {
  fetchNews() {
    final data = Welcome.fromJson(mockNews);
    return data.articles;
  }
}

final mockNews = {
  "status": "ok",
  "totalResults": 880,
  "articles": [
    {
      "source": {"id": "ars-technica", "name": "Ars Technica"},
      "author": "Chuong Nguyen",
      "title":
          "Dealmaster: Summer savings on laptops, smartphones, and smartwatches",
      "description":
          "With savings on laptops and smartphones, now is a great time to upgrade your gear.",
      "url":
          "https://arstechnica.com/shopping/2023/06/dealmaster-summer-savings-on-laptops-smartphones-and-smartwatches/",
      "urlToImage":
          "https://cdn.arstechnica.net/wp-content/uploads/2018/07/180711_MacBookPro_NewYorkCity_BK_41579-760x380.jpg",
      "publishedAt": "2023-06-16T11:15:28Z",
      "content":
          "0 with \r\nIf you haven't started your summer vacation, you can be opportunistic and save money by refreshing your laptop. We've rounded up some of the top deals from Apple, Dell, HP, and Lenovo if you… [+9540 chars]"
    },
    {
      "source": {"id": "business-insider", "name": "Business Insider"},
      "author": "Ryan Hogg",
      "title":
          "You can now fix those embarrassing mistakes by editing your WhatsApp messages and iMessages – here's how",
      "description":
          "Here's how to fix your text messages. WhatsApp now lets users edit their messages, but you may not guess how. iMessage doesn't make it obvious either.",
      "url":
          "https://www.businessinsider.com/how-to-fix-whatsapp-imessage-mistakes-2023-6",
      "urlToImage":
          "https://i.insider.com/646c7460a739dc001808fba3?width=1200&format=jpeg",
      "publishedAt": "2023-06-16T09:44:21Z",
      "content":
          "You've only got 15 minutes to edit your WhatsApp messages.Getty Images\r\n<ul>\n<li>WhatsApp finally rolled out a long-awaited edit button to help you fix those embarrassing mistakes.</li>\n<li>You only … [+2566 chars]"
    },
    {
      "source": {"id": null, "name": "Xataka.com"},
      "author": "Albert Sanchis",
      "title":
          "John Deere ha privado a los agricultores de su \"derecho a reparar\" sus tractores. Solución: hackearlos",
      "description":
          "Los agricultores y los grandes fabricantes de tractores, John Deere a la cabeza, llevan años hundidos en una batalla por algo aparentemente banal: reparar su maquinaria. El derecho de cualquier persona a reparar, modificar o simplemente acceder a sus propias …",
      "url":
          "https://www.xataka.com/magnet/john-deere-ha-privado-a-agricultores-su-derecho-a-reparar-sus-tractores-solucion-hackearlos-1",
      "urlToImage":
          "https://i.blogs.es/0fad3a/derecho-a-reparar-john-deere/840_560.jpeg",
      "publishedAt": "2023-06-16T08:05:20Z",
      "content":
          "Los agricultores y los grandes fabricantes de tractores, John Deere a la cabeza, llevan años hundidos en una batalla por algo aparentemente banal: reparar su maquinaria. El derecho de cualquier perso… [+4951 chars]"
    },
    {
      "source": {"id": null, "name": "Xataka.com"},
      "author": "Jose García",
      "title":
          "Es oficial: la Unión Europea aprueba una ley para que las baterías de los móviles se puedan sacar y sustituir \"fácilmente\"",
      "description":
          "Tal y como estaba previsto, la Unión Europea ha aprobado unas nuevas normas relacionadas con el diseño, la producción y la gestión de residuos de las baterías vendidas en la Unión Europea. Después de hacer obligatorio el puerto USB-C para los nuevos smartphon…",
      "url":
          "https://www.xataka.com/moviles/oficial-union-europea-aprueba-ley-baterias-moviles-se-puedan-sacar-sustituir-facilmente",
      "urlToImage":
          "https://i.blogs.es/ffaac6/pexels-tyler-lastovich-719399/840_560.jpeg",
      "publishedAt": "2023-06-16T08:35:13Z",
      "content":
          "Tal y como estaba previsto, la Unión Europea ha aprobado unas nuevas normas relacionadas con el diseño, la producción y la gestión de residuos de las baterías vendidas en la Unión Europea. Después de… [+3788 chars]"
    },
    {
      "source": {"id": "fox-news", "name": "Fox News"},
      "author": "Kurt Knutsson, CyberGuy Report",
      "title":
          "How to go paperless by turning your phone into a portable scanner",
      "description":
          "Scanning your documents only requires your phone. Kurt \"CyberGuy' Knutsson explains how to scan all your important documents on your iOS Notes app or Google Drive.",
      "url":
          "https://www.foxnews.com/tech/paperless-turning-phone-portable-scanner",
      "urlToImage":
          "https://static.foxnews.com/foxnews.com/content/uploads/2023/06/1-MAN-SMILES-AT-PHONE.jpg",
      "publishedAt": "2023-06-16T10:00:17Z",
      "content":
          "Did you know your iPhone or Android camera can be turned into a handheld digital scanner? It's easy, free, and super convenient. You can save scans to your phone and, even better, turn them into PDFs… [+5858 chars]"
    },
    {
      "source": {"id": null, "name": "Digital Trends"},
      "author": "Trevor Mogg",
      "title": "Google parent Alphabet tells workers to be wary of AI chatbots",
      "description":
          "Alphabet has told its employees not to enter confidential information into chatbots, including Bard, which was created by Alphabet-owned Google.",
      "url":
          "https://www.digitaltrends.com/computing/google-parent-alphabet-tells-workers-to-be-wary-of-chatbots/",
      "urlToImage":
          "https://www.digitaltrends.com/wp-content/uploads/2023/02/chatgpt-versus-google-bard.jpg?resize=1200%2C630&p=1",
      "publishedAt": "2023-06-16T06:55:13Z",
      "content":
          "Alphabet has told its employees not to enter confidential information into Bard, the generative-AI chatbot created and operated by Google, which Alphabet owns.\r\nThe company’s warning also extends to … [+2325 chars]"
    },
    {
      "source": {"id": null, "name": "heise online"},
      "author": "Ben Schwan",
      "title": "Safari: So nutzen Sie künftig Web-Apps unter macOS 14",
      "description":
          "Apple unterstützt mit Safari 17 demnächst nativ Web-Apps. Die lassen sich dann direkt ins Betriebssystem integrieren.",
      "url":
          "https://www.heise.de/news/Safari-So-nutzt-man-kuenftig-Web-Apps-unter-macOS-14-9188466.html",
      "urlToImage":
          "https://heise.cloudimg.io/bound/1200x1200/q85.png-lossy-85.webp-lossy-85.foil1/_www-heise-de_/imgs/18/4/2/5/6/0/5/8/safari-og-twitter_2x-e3437636c5ebaa10-f5b1dce5bbb37e7a.png",
      "publishedAt": "2023-06-16T09:14:00Z",
      "content":
          "Web-Apps sind Websites, die sich wie normale Programme ausführen lassen. Auf dem Mac können sie schon seit Jahren in Browsern wie Firefox oder Chrome generiert werden, zudem gibt es spezielle Program… [+2318 chars]"
    },
    {
      "source": {"id": null, "name": "heise online"},
      "author": "Nico Jurran",
      "title":
          "heise+ | Yamaha ZG01: USB-Audiointerface für Gamer und Streamer im Test",
      "description":
          "Der Audiomixer ZG01 ist laut Yamaha ein Spezialist für Game-Voice-Chats und Game-Streaming. Wir haben uns angeschaut, wie gut das funktioniert.",
      "url":
          "https://www.heise.de/tests/Yamaha-ZG01-USB-Audiointerface-fuer-Gamer-und-Streamer-im-Test-9185536.html?wt_mc=rss.red.ho.ho.atom.beitrag_plus.beitrag_plus",
      "urlToImage":
          "https://heise.cloudimg.io/bound/1200x1200/q85.png-lossy-85.webp-lossy-85.foil1/_www-heise-de_/imgs/18/4/2/5/4/4/6/0/yamahazg01_125004_nij_extra_goesberl_frei-d18f273e49c50d4f.jpg",
      "publishedAt": "2023-06-16T10:50:00Z",
      "content":
          "Inhaltsverzeichnis\r\nOffenbar weiß Yamaha selbst nicht so recht, als was es sein ZG01 bezeichnen soll: Der beiliegende Start Guide nennt das Gerät \"Game Streaming Mixer\", die deutsche Website spricht … [+3176 chars]"
    },
    {
      "source": {"id": null, "name": "9to5Mac"},
      "author": "Zac Hall",
      "title":
          "Apple Watch and Fitness+ helping Nate become ‘a healthier, happier person’ after losing 100 lbs",
      "description":
          "Apple Watch saves lives, and it’s not just by making SOS calls and detecting heart conditions. Sometimes the motivates someone in just the right way to change their life through a months-long fitness journey.\n more…\nThe post Apple Watch and Fitness+ helping N…",
      "url": "https://9to5mac.com/2023/06/16/apple-watch-losing-100-pounds/",
      "urlToImage":
          "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2023/06/nate-gorby.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
      "publishedAt": "2023-06-16T11:00:00Z",
      "content":
          "Apple Watch saves lives, and it’s not just by making SOS calls and detecting heart conditions. Sometimes the Apple Watch motivates someone in just the right way to change their life through a months-… [+1649 chars]"
    },
    {
      "source": {"id": null, "name": "9to5Mac"},
      "author": "Zac Hall",
      "title":
          "This adapter turns standard CarPlay into wireless, actually works [iOS 17 support]",
      "description":
          "Do Wireless CarPlay adapters actually work? I bought two cars a few years ago. The Honda Civic came with wired Apple CarPlay. The Honda HR-V had a basic entertainment system that I upgraded with an . I really wanted Wireless CarPlay in the Civic, but replacin…",
      "url": "https://9to5mac.com/2023/06/16/carplay-wireless-carplay-adapter/",
      "urlToImage":
          "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2020/03/ZAC07124.jpeg?resize=1200%2C628&quality=82&strip=all&ssl=1",
      "publishedAt": "2023-06-16T10:00:00Z",
      "content":
          "Do Wireless CarPlay adapters actually work? I bought two cars a few years ago. The Honda Civic came with wired Apple CarPlay. The Honda HR-V had a basic entertainment system that I upgraded with an A… [+2760 chars]"
    },
  ]
};
