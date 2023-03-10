import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['en', 'de', 'ru', 'uk'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String enText = '',
    String deText = '',
    String ruText = '',
    String ukText = '',
  }) =>
      [enText, deText, ruText, ukText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // profileSetup
  {
    'xmv79oiy': {
      'en': 'Enter your first name to get started',
      'de': 'Tipp deinen Vornamen ein um loszulegen',
      'ru': '',
      'uk': '',
    },
    'qij4xf8z': {
      'en': 'Your name and picture will be visible to callers.',
      'de': 'Dein Name ist sichtbar für Anrufer.',
      'ru': '',
      'uk': '',
    },
    'jnrviokh': {
      'en': 'Your Name',
      'de': 'Dein Vorname',
      'ru': '',
      'uk': '',
    },
    'd2vbr19d': {
      'en': 'Please enter a valid number...',
      'de': 'Bitte tipp eine korrekte Zahl ein...',
      'ru': '',
      'uk': '',
    },
    'rr0o2pd0': {
      'en': 'Field is required',
      'de': 'Feld ist notwendig',
      'ru': '',
      'uk': '',
    },
    'pczfnkxk': {
      'en': 'By using Communico, you agree to Communico\'s terms of conditions',
      'de': 'Durch die Nutzung von Communico stimmst du Communico\'s AGB\'s und Datenschutzerklärung zu',
      'ru': '',
      'uk': '',
    },
    'sl4excnt': {
      'en': 'Let\'s start',
      'de': 'Auf geht\'s',
      'ru': '',
      'uk': '',
    },
    'w9ptqzgy': {
      'en': 'Home',
      'de': 'Home',
      'ru': '',
      'uk': '',
    },
  },
  // homePage
  {
    'skpz6t83': {
      'en': 'Hello',
      'de': 'Hallo',
      'ru': '',
      'uk': '',
    },
    'nuo83rbc': {
      'en': 'Call a mediator',
      'de': 'Rufe einen Übersetzer an',
      'ru': '',
      'uk': '',
    },
    '7qjg0wzx': {
      'en': 'A mediator can help with translating to and from other languages.',
      'de': 'Ein Übersetzer hilft dir beim Verständigen in andere Sprachen',
      'ru': '',
      'uk': '',
    },
    'lxnt55z2': {
      'en': ' Home',
      'de': 'Home',
      'ru': '',
      'uk': '',
    },
  },
  // summaryScreen
  {
    'otcn9phn': {
      'en': 'Summary',
      'de': 'Zusammenfassung',
      'ru': '',
      'uk': '',
    },
    'pee0gs3y': {
      'en': 'Call with ',
      'de': 'Anruf mit ',
      'ru': '',
      'uk': '',
    },
    'ug6o18na': {
      'en': ' ',
      'de': ' ',
      'ru': ' ',
      'uk': ' ',
    },
    'tw3rzdls': {
      'en': 'Summary',
      'de': 'Zusammenfassung',
      'ru': '',
      'uk': '',
    },
    'no_summary': {
      'en': 'Once you have conducted any calls, they will be visible here.',
      'de': 'Hier werden alle Anrufe angezeigt, die du getätigt hast.',
      'ru': '',
      'uk': '',
    }
  },
  // profilePage
  {
    'q1nqid06': {
      'en': 'Edit',
      'de': 'Bearbeiten',
      'ru': '',
      'uk': '',
    },
    'mz0qekn8': {
      'en': 'Delete Account',
      'de': 'Lösche meinen Account',
      'ru': '',
      'uk': '',
    },
    'n59onsgb': {
      'en': 'Profile',
      'de': 'Profil',
      'ru': '',
      'uk': '',
    },
  },
  // editProfile
  {
    'hyvsguak': {
      'en': 'Edit Profile',
      'de': 'Profil bearbeiten',
      'ru': '',
      'uk': '',
    },
    'is50c6zm': {
      'en': 'Change photo',
      'de': 'Foto bearbeiten',
      'ru': '',
      'uk': '',
    },
    'w3gtvat3': {
      'en': 'Your first name',
      'de': 'Dein Vorname',
      'ru': '',
      'uk': '',
    },
    '2w6e6rch': {
      'en': 'Please enter a valid number...',
      'de': 'Bitte eine korrekte Nummer eingeben...',
      'ru': '',
      'uk': '',
    },
    'owkv2zja': {
      'en': 'Field is required',
      'de': 'Feld ist notwendig',
      'ru': '',
      'uk': '',
    },
    '9zh5f1os': {
      'en': 'Save Changes',
      'de': 'Speichern',
      'ru': '',
      'uk': '',
    },
    'gc06rv84': {
      'en': 'Home',
      'de': 'Home',
      'ru': '',
      'uk': '',
    },
  },
  // MediatorCallConfig
  {
    'sayhbn65': {
      'en': 'Call a mediator',
      'de': 'Übersetzer anrufen',
      'ru': '',
      'uk': '',
    },
    'pwytycpf': {
      'en': 'Connect me with someone who speaks',
      'de': 'Verbinde mich mit jemanden, folgende Sprachen spricht:',
      'ru': '',
      'uk': '',
    },
    'kt76iabn': {
      'en': 'Option',
      'de': 'Option',
      'ru': '',
      'uk': '',
    },
    'esp6pa56': {
      'en': 'Topics',
      'de': 'Themen',
      'ru': '',
      'uk': '',
    },
    '27g6k418': {
      'en': 'Medical',
      'de': 'Medizinisch',
      'ru': '',
      'uk': '',
    },
    '76th2518': {
      'en': 'Shopping',
      'de': 'Einkaufen',
      'ru': '',
      'uk': '',
    },
    '2asqhech': {
      'en': 'Government',
      'de': 'Verwaltung',
      'ru': '',
      'uk': '',
    },
    '0re5vmq7': {
      'en': 'Rent',
      'de': 'Miete',
      'ru': '',
      'uk': '',
    },
    'nj1eb7cq': {
      'en': 'Food',
      'de': 'Essen',
      'ru': '',
      'uk': '',
    },
    'eowmel3i': {
      'en': 'General',
      'de': 'Allgemein',
      'ru': '',
      'uk': '',
    },
    'ljjfcdr9': {
      'en': 'Add comment for mediator',
      'de': 'Füge einen Kommentar für den Übersetzer hinzu',
      'ru': '',
      'uk': '',
    },
    '9k4lagxa': {
      'en': 'Comment',
      'de': 'Kommentar',
      'ru': '',
      'uk': '',
    },
    '6jp6rbwr': {
      'en': 'Need to buy aspirin...',
      'de': 'Muss Aspirin kaufen...',
      'ru': '',
      'uk': '',
    },
    '35i26vyc': {
      'en': 'Field is required',
      'de': 'Feld ist notwendig',
      'ru': '',
      'uk': '',
    },
    'gc4ayssk': {
      'en': 'Call',
      'de': 'Anrufen',
      'ru': '',
      'uk': '',
    },
    'zxqew89o': {
      'en': 'Home',
      'de': 'Home',
      'ru': '',
      'uk': '',
    },
  },
  // feedbackMediator
  {
    'hb46oro4': {
      'en': 'How was your call with [blabla]?',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '0qfmyar8': {
      'en': 'Please indicate if you experienced any of below',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'gi82j5gs': {
      'en': 'Unprofessional',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'srmhddza': {
      'en': 'Lack of language skills',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '1sfb1p1o': {
      'en': 'Hard to understand',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'nxqj2hcm': {
      'en': 'Connection issues',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '9srp6rvz': {
      'en': 'Do you want to add something else?',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'icqfx9w0': {
      'en': 'Home',
      'de': '',
      'ru': '',
      'uk': '',
    },
  },
  // loadingMediator
  {
    'wye11seo': {
      'en': 'Connecting with Mediator...',
      'de': 'Verbinde mit Übersetzer...',
      'ru': '',
      'uk': '',
    },
    '09bvtbz5': {
      'en': 'Home',
      'de': 'Home',
      'ru': '',
      'uk': '',
    },
    'goBack': {
      'en': 'Go back',
      'de': 'Zurück',
      'ru': '',
      'uk': '',
    }
  },
  // callScreen
  {
    'e91wsmdy': {
      'en': 'Home',
      'de': '',
      'ru': '',
      'uk': '',
    },
  },
  // onboarding
  {
    'vvuusjur': {
      'en': 'Communico',
      'de': 'Communico',
      'ru': '',
      'uk': '',
    },
    't2cphg2q': {
      'en':
          'Call mediators\nto communicate with people speaking other languages.',
      'de': 'Rufe Übersetzer an,\num mit Menschen zu sprechen, die deine Sprache nicht verstehen',
      'ru': '',
      'uk': '',
    },
    'g6u9de7y': {
      'en': 'Fast.\nFor Free.',
      'de': 'Schnell.\nKostenlos.',
      'ru': '',
      'uk': '',
    },
    'z3moylo6': {
      'en': 'Our mission:',
      'de': 'Unsere Mission:',
      'ru': '',
      'uk': '',
    },
    '6zz2w42v': {
      'en':
          'We quickly connect you with people who can help you navigate the foreign environment.',
      'de': 'Wir verbinden dich mit Menschen, die dir helfen, dich besser in der fremden Umgebung zurecht zu finden',
      'ru': '',
      'uk': '',
    },
    'tqnftus4': {
      'en': 'Get help to\nunderstand others when...',
      'de': 'Bekomme Hilfe beim\nVerstehen andere, wenn du',
      'ru': '',
      'uk': '',
    },
    'vhm0rqag': {
      'en':
          '...buying medicine.\n\n...asking for directions.\n\n...talking to officials.\n\n...calling for help.\n\n...arriving in Germany.',
      'de':
          '...Medikamente kaufst.\n\n...nach dem Weg fragst.\n\n...mit Verwaltungsmitarbeitern sprichst.\n\n...Hilfe brauchst.\n\n...in Deutschland ankommst.',
      'ru': '',
      'uk': '',
    },
    'kuk2j3hh': {
      'en': 'Continue',
      'de': 'Weiter',
      'ru': '',
      'uk': '',
    },
    '2t868g5w': {
      'en': 'Home',
      'de': 'Home',
      'ru': '',
      'uk': '',
    },
  },
  // HelpScreen
  {
'57xlkz7i': {
'en': 'Help',
'de': 'Hilfe',
'ru': 'Помощь',
'uk': 'Допоможіть',
},
'vn8unm31': {
'en': 'What is Communico?',
'de': 'Was ist Communico?',
'ru': 'Что такое Communico?',
'uk': 'Що таке Communico?',
},
'k4vrnsne': {
'en': 'Communico is an app created by students of Hasso-Plattner-Institute and Handelshochschule Leipzig. It is the result of a non-profit and purpose-driven project to help Ukrainian refugees.\nWith Communico, we are trying to close the language gap of Ukrainian refugees and locals by connecting them with volunteering translators. ',
'de': 'Communico ist eine App, die von Studierenden des Hasso-Plattner-Instituts und der Handelshochschule Leipzig entwickelt wurde. Sie ist das Ergebnis eines gemeinnützigen und zweckgebundenen Projekts zur Unterstützung ukrainischer Flüchtlinge.\nMit Communico versuchen wir, die Sprachlücke zwischen ukrainischen Flüchtlingen und Deutschen zu schließen, indem wir sie mit ehrenamtlichen Übersetzern zusammenbringen. ',
'ru': 'Communico - это приложение, разработанное студентами Института Хассо Платтнера и Лейпцигской высшей школы менеджмента. Это результат некоммерческого и целевого проекта по поддержке украинских беженцев.\nС помощью Communico мы пытаемся преодолеть языковой разрыв между украинскими беженцами и немцами, подбирая им переводчиков-волонтеров. ',
'uk': 'Communico — це додаток, розроблений студентами Інституту Хассо Платтнера та Вищої школи менеджменту Лейпцига. Це результат некомерційного та цільового проекту підтримки українських біженців.\nЗ Communico ми намагаємося подолати мовний розрив між українськими біженцями та німцями, об\'єднавши їх разом із волонтерами-перекладачами. ',
},
'hzmibve5': {
'en': 'Are there any costs?',
'de': 'Gibt es irgendwelche Kosten?',
'ru': 'Есть ли какие-либо затраты?',
'uk': 'чи є якісь витрати?',
},
'22imv76q': {
'en': 'There are no costs.',
'de': 'Es gibt keine Kosten.',
'ru': 'Это не требует никаких затрат.',
'uk': 'Немає вартості.',
},
'6t8cmzch': {
'en': 'Why is it free?',
'de': 'Warum ist es kostenlos?',
'ru': 'Почему это бесплатно?',
'uk': 'Чому це безкоштовно?',
},
'oqqy30cc': {
'en': 'The app was developed to ease the suffering of Ukrainian refugees. As long as possible, we are commited cover hosting and development costs ourselves. ',
'de': 'Die App wurde entwickelt, um das Leid der ukrainischen Flüchtlinge zu lindern. Solange es möglich ist, fühlen wir uns verpflichtet, die Hosting- und Entwicklungskosten selbst zu tragen. ',
'ru': 'Приложение было разработано для облегчения страданий украинских беженцев. Пока это возможно, мы считаем себя обязанными покрывать расходы на хостинг и разработку самостоятельно. ',
'uk': 'Додаток розроблено для полегшення страждань українських біженців. Наскільки це можливо, ми відчуваємо себе зобов\'язаними нести витрати на розміщення та розробку самостійно. ',
},
'tmzih215': {
'en': 'Who can call me?',
'de': 'Wer kann mich anrufen?',
'ru': 'Кто может позвонить мне?',
'uk': 'хто може мені подзвонити?',
},
'pzd8d0xv': {
'en': 'Anyone who downloaded the associated Communico app and needs your help may call you. You can still reject calls at any time.',
'de': 'Jede Person, die die zugehörige Communico-App heruntergeladen hat und deine Hilfe benötigt, kann Dich anrufen. Du kannst Anrufe trotzdem jederzeit abweisen.',
'ru': 'Любой, кто загрузил приложение Communico и нуждается в вашей помощи, может позвонить вам. Вы по-прежнему можете отклонять вызовы в любое время.',
'uk': 'Будь-хто, хто завантажив пов\'язаний додаток Communico і потребує вашої допомоги, може зателефонувати вам. Ви все одно можете відхилити дзвінки в будь-який час.',
},
'sny92lgf': {
'en': 'Why am I not getting called?',
'de': 'Warum werde ich nicht angerufen?',
'ru': 'Почему меня не зовут?',
'uk': 'Чому мене не дзвонять?',
},
'pow3hc3a': {
'en': 'Need for translations is hard to predict. If you are not getting called, there are probably only few people in need of translations.',
'de': 'Der Bedarf an Übersetzungen lässt sich nur schwer vorhersagen. Wenn Du nicht angerufen wist, gibt es wahrscheinlich nur wenige Menschen, die Übersetzungen benötigen.',
'ru': 'Сложно предсказать спрос на переводы. Если вас не зовут, то, вероятно, в переводе нуждаются лишь несколько человек.',
'uk': 'Потребу в перекладах передбачити важко. Якщо вам не зателефонували, ймовірно, є лише кілька людей, яким потрібні переклади.',
},
'tx835njf': {
'en': 'Are my calls recorded?',
'de': 'Werden meine Anrufe aufgezeichnet?',
'ru': 'Будут ли записываться мои звонки?',
'uk': 'Чи записуються мої дзвінки?',
},
'qoin6saf': {
'en': 'Your calls are not recorded. Only the metadata (time of calls, participants,...) are saved to improve the app.',
'de': 'Deine Anrufe werden nicht aufgezeichnet. Lediglich die Metadaten (Zeit der Anrufe, Teilnehmer,...) werden zur Verbesserung der App gespeichert.',
'ru': 'Ваши звонки не записываются. Для улучшения работы приложения сохраняются только метаданные (время звонков, участники...).',
'uk': 'Ваші дзвінки не будуть записані. Для покращення програми зберігаються лише метадані (час дзвінків, учасники,...).',
},
'pp90t98r': {
'en': 'Can I connect with the same person twice?',
'de': 'Kann ich mich nochmal mit der gleichen Person verbinden?',
'ru': 'Могу ли я снова подключиться к тому же человеку?',
'uk': 'Чи можу я знову підключитися до тієї ж особи?',
},
'u2pug9kb': {
'en': 'You can connect with the same person by chance. But it is not possible to select a specific person to call.',
'de': 'Du kannst zufällig mit derselben Person verbunden werden. Aber es ist nicht möglich, eine bestimmte Person für einen Anruf auszuwählen.',
'ru': 'Вы можете быть случайным образом связаны с одним и тем же человеком. Но выбрать конкретного человека для звонка невозможно.',
'uk': 'Ви можете випадковим чином підключитися до однієї особи. Але вибрати конкретну людину для дзвінка неможливо.',
},
'qqqmg6eb': {
'en': 'Daniel Stachnik, Johanna Schäpling, Jonas Naukamm, Moritz K. Hagemann, Luca Springer\n\nc/o HPI Seed GmbH\nAugust-Bebel-Str. 88\n14482 Potsdam\n\ndaniel.stachnik[at]student.hpi.de',
'de': 'Daniel Stachnik, Johanna Schäpling, Jonas Naukamm, Moritz K. Hagemann, Luca Springer\n\nc/o HPI Seed GmbH\nAugust-Bebel-Str. 88\n14482 Potsdam\n\ndaniel.stachnik[at]student.hpi.de',
'ru': 'Даниэль Стачник, Йоханна Шеплинг, Йонас Наукамм, Мориц К. Хагеманн, Лука Шпрингер\n\nc/o HPI Seed GmbH\nAugust-Bebel-Str. 88\n14482 Potsdam\n\ndaniel.stachnik[at]student.hpi.de',
'uk': 'Даніель Стахнік, Йоханна Шеплінг, Йонас Наукамм, Моріц К. Хагеманн, Лука Спрінгер\n\nc/o HPI Seed GmbH\nAugust-Bebel-Str. 88\n14482 Potsdam\n\ndaniel.stachnik[at]student.hpi.de',
},
'5r5nulln': {
'en': 'Help',
'de': 'Hilfe',
'ru': 'Помощь',
'uk': 'Допоможіть',
}
  },
  // OptionCard
  {
    'll8xl2p8': {
      'en': 'FREE',
      'de': 'FREE',
      'ru': '',
      'uk': '',
    },
    'tfkzupq6': {
      'en': 'Volunteers who will try to help you the best they can.',
      'de': 'Freiwillige, die dir bestmöglich helfen.',
      'ru': '',
      'uk': '',
    },
  },
  // Miscellaneous
  {
    'u9ui9fqi': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'odr9ost1': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'frwavqv1': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'wqosh9wj': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'akhfgtlv': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '7puvbrwk': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '8mexvixu': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'ryl9jern': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '4c8t6oxr': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'fjb4aojv': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '80a6l8cf': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'teyu22fi': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '87sm77u7': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'pyk44l2e': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'lwbxlukn': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'bwmt1wsi': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '59hrbtm0': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'tyk0ub94': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'eaxsqm61': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'b7kcnhe0': {
      'en': '',
      'de': '',
      'ru': '',
      'uk': '',
    },
  },
].reduce((a, b) => a..addAll(b));
