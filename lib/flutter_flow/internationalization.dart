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
    'kgm70144': {
      'en': 'Upload a photo for mediators to see your face.',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '02xvp76j': {
      'en': 'Your Name',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '50c32kv8': {
      'en': 'Please enter a valid number...',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'panx9zqp': {
      'en': 'Field is required',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'xgjamhfo': {
      'en':
          'By using Communico, you agree to comply with Communico\'s terms of conditions',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'c7r8lzi6': {
      'en': 'Let\'s start',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'w9ptqzgy': {
      'en': 'Home',
      'de': '',
      'ru': '',
      'uk': '',
    },
  },
  // homePage
  {
    'skpz6t83': {
      'en': 'Hello',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'nuo83rbc': {
      'en': 'Call a mediator',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '7qjg0wzx': {
      'en': 'A mediator can help with translating to and from other languages.',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'lxnt55z2': {
      'en': ' Home',
      'de': '',
      'ru': '',
      'uk': '',
    },
  },
  // summaryScreen
  {
    'otcn9phn': {
      'en': 'Summary',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'pee0gs3y': {
      'en': 'Call with ',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'ug6o18na': {
      'en': ' ',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'tw3rzdls': {
      'en': 'Summary',
      'de': '',
      'ru': '',
      'uk': '',
    },
  },
  // profilePage
  {
    'q1nqid06': {
      'en': 'Edit',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'mz0qekn8': {
      'en': 'Delete Account',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'n59onsgb': {
      'en': 'Profile',
      'de': '',
      'ru': '',
      'uk': '',
    },
  },
  // editProfile
  {
    'hyvsguak': {
      'en': 'Edit Profile',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'is50c6zm': {
      'en': 'Change Photo',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'w3gtvat3': {
      'en': 'Your Name',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '2w6e6rch': {
      'en': 'Please enter a valid number...',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'owkv2zja': {
      'en': 'Field is required',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '9zh5f1os': {
      'en': 'Save Changes',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'gc06rv84': {
      'en': 'Home',
      'de': '',
      'ru': '',
      'uk': '',
    },
  },
  // MediatorCallConfig
  {
    'sayhbn65': {
      'en': 'Call a mediator',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'pwytycpf': {
      'en': 'Connect me with someone who speaks',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'kt76iabn': {
      'en': 'Option',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'esp6pa56': {
      'en': 'Topics',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '27g6k418': {
      'en': 'Medical',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '76th2518': {
      'en': 'Shopping',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '2asqhech': {
      'en': 'Government',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '0re5vmq7': {
      'en': 'Rent',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'nj1eb7cq': {
      'en': 'Shopping',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'eowmel3i': {
      'en': 'General',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'ljjfcdr9': {
      'en': 'Add comment for mediator',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '9k4lagxa': {
      'en': 'Comment',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '6jp6rbwr': {
      'en': 'Need to buy aspirin...',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '35i26vyc': {
      'en': 'Field is required',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'gc4ayssk': {
      'en': 'Call',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'zxqew89o': {
      'en': 'Home',
      'de': '',
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
    '7jf0ex30': {
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
      'de': '',
      'ru': '',
      'uk': '',
    },
    '09bvtbz5': {
      'en': 'Home',
      'de': '',
      'ru': '',
      'uk': '',
    },
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
      'de': '',
      'ru': '',
      'uk': '',
    },
    't2cphg2q': {
      'en':
          'Call mediators\nto communicate with people speaking other languages.',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'g6u9de7y': {
      'en': 'Fast.\nFor Free.',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'z3moylo6': {
      'en': 'Our mission:',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '6zz2w42v': {
      'en':
          'We quickly connect you with people who can help you navigate the foreign environment.',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'tqnftus4': {
      'en': 'Get help to\nunderstand others when...',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'vhm0rqag': {
      'en':
          '...buying medicine.\n\n...asking for directions.\n\n...talking to officials.\n\n...calling for help.\n\n...arriving in Germany.',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'kuk2j3hh': {
      'en': 'Continue',
      'de': '',
      'ru': '',
      'uk': '',
    },
    '3q37qo9u': {
      'en': 'Home',
      'de': '',
      'ru': '',
      'uk': '',
    },
  },
  // HelpScreen
  {
    '7zk8nq2x': {
      'en': 'Page Title',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'tles97db': {
      'en': 'Help',
      'de': '',
      'ru': '',
      'uk': '',
    },
  },
  // OptionCard
  {
    'll8xl2p8': {
      'en': 'FREE',
      'de': '',
      'ru': '',
      'uk': '',
    },
    'tfkzupq6': {
      'en': 'Volunteers who will try to help you the best they can.',
      'de': '',
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
