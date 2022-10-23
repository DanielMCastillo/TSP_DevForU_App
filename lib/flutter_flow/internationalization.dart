import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Bienvenida
  {
    'i5cbai9p': {
      'es': '¡Hola!',
      'en': 'Hello!',
    },
    'hcfihmnd': {
      'es':
          'Soy Devi y te doy la bienvenida a mi casa,  alguno de mis amigos y yo te apoyaremos en tu proceso de automonitoreo.',
      'en':
          'I am Devi and I welcome you to my house, some of my friends and I will support you in your self-monitoring process.',
    },
    'ttypee78': {
      'es': 'Dame de comer',
      'en': 'feed me',
    },
    '8r1f64d7': {
      'es':
          'Me vas a alimentar en las horas que tú hayas comido, así estaré feliz.\n\n¡No te preocupes! Yo te voy a apoyar en recordarte con notificaciones en tus horas de comida, pero debes decírmelas antes.',
      'en':
          'You are going to feed me in the hours that you have eaten, so I will be happy. Don&#39;t worry! I am going to support you in reminding you with notifications at your meal times, but you must tell me beforehand.',
    },
    'opp6bvdk': {
      'es': 'Anota tus sentimientos',
      'en': 'write down your feelings',
    },
    'glw62prf': {
      'es':
          'Quiero que anotes como te sientes para que puedas monitorear tus sentimientos y tus estados de ánimo.\n\nEs un proceso difícil, pero espero que yo o mis amigos te podamos ayudar a mejorarte, eso nos haría muy feliz. ¡Tú puedes!',
      'en':
          'I want you to write down how you feel so that you can monitor your feelings and moods. It is a difficult process, but I hope that I or my friends can help you improve yourself, that would make us very happy. You can!',
    },
    'ztrohci9': {
      'es': 'Empecemos',
      'en': 'Let us begin',
    },
  },
  // Registro
  {
    'v8mwum0i': {
      'es': 'Inicia sesión',
      'en': 'Log in',
    },
    'ywads21d': {
      'es': 'Correo electronico',
      'en': 'Email',
    },
    'uheppdyi': {
      'es': 'Ingresa tu correo electrónico',
      'en': 'Enter your email',
    },
    '8up2shoh': {
      'es': 'Contraseña ',
      'en': 'Password',
    },
    'us6u7nkh': {
      'es': 'Ingresa tu contraseña ',
      'en': 'Enter your password',
    },
    'j12rw9xn': {
      'es': '',
      'en': '',
    },
    'ecjldo3a': {
      'es': 'Iniciar sesión ',
      'en': 'Log in',
    },
    'ryx22ldn': {
      'es': '¿Olvidaste tu contraseña?',
      'en': 'Did you forget your password?',
    },
    's5ww4kq4': {
      'es': 'Crear cuenta',
      'en': 'Create Account',
    },
    'l3pwopgg': {
      'es': 'Correo electrónico ',
      'en': 'Email',
    },
    'y4bxtvw1': {
      'es': 'Ingresa tu correo electrónico ',
      'en': 'Enter your email',
    },
    'yw5xth1j': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'tpa63jkc': {
      'es': 'Ingresa tu contraseña',
      'en': 'Enter your password',
    },
    'u0ydz3w7': {
      'es': 'Registrate',
      'en': 'Sign up',
    },
    'o9kod5vv': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // SeleccionMascota
  {
    '2vyk80m7': {
      'es': 'Devi',
      'en': 'devi',
    },
    'cnf82n9r': {
      'es': 'Ajolote',
      'en': 'Axolotl',
    },
    '3vwt1fky': {
      'es': 'Seleccionar',
      'en': 'Select',
    },
    '5bqr695o': {
      'es': 'Jali',
      'en': 'Khali',
    },
    'p6jk8dyh': {
      'es': 'Zorro',
      'en': 'Fox',
    },
    '7nqqlrh9': {
      'es': 'Seleccionar',
      'en': 'Select',
    },
    'znz1xpud': {
      'es': 'Sonam',
      'en': 'Sonam',
    },
    'ot4v8fjt': {
      'es': 'Gato',
      'en': 'Cat',
    },
    'jngeo9a8': {
      'es': 'Seleccionar',
      'en': 'Select',
    },
    'fzfhji88': {
      'es': 'Raluca',
      'en': 'Raluca',
    },
    'qm1bymsn': {
      'es': 'Perro',
      'en': 'Dog',
    },
    'h2zjh8fe': {
      'es': 'Seleccionar',
      'en': 'Select',
    },
    'ukmhl6f1': {
      'es': 'Nosek',
      'en': 'Nosek',
    },
    'zt8f1s0x': {
      'es': 'Dragón',
      'en': 'Dragon',
    },
    'yi7y3voc': {
      'es': 'Seleccionar',
      'en': 'Select',
    },
    '0sp6803v': {
      'es': 'Bobi',
      'en': 'bobby',
    },
    '2z3a4zzw': {
      'es': 'Oso panda',
      'en': 'Panda bear',
    },
    'pvp2q52f': {
      'es': 'Seleccionar',
      'en': 'Select',
    },
    'brp59pj4': {
      'es': 'Chork',
      'en': 'Chork',
    },
    'ty7hypoa': {
      'es': 'Conejo',
      'en': 'Rabbit',
    },
    'nh1vyoun': {
      'es': 'Seleccionar',
      'en': 'Select',
    },
    'mfttgzcq': {
      'es': 'Mae',
      'en': 'Mae',
    },
    'tl2iy5lr': {
      'es': 'Unicornio',
      'en': 'Unicorn',
    },
    'w6onct9x': {
      'es': 'Seleccionar',
      'en': 'Select',
    },
    '8mj29reu': {
      'es': 'Escoge un acompañante',
      'en': 'Choose a companion',
    },
    'ap7gn3w0': {
      'es': 'seleccion',
      'en': 'selection',
    },
  },
  // Home
  {
    'wcdiun8a': {
      'es': 'Casa de ',
      'en': 'House of',
    },
    '72u32ube': {
      'es': 'Casa',
      'en': 'House',
    },
  },
  // Perfil
  {
    'gx0mjalu': {
      'es': 'User',
      'en': 'user',
    },
    'hzs0sv1e': {
      'es': 'Editar perfil',
      'en': 'Edit profile',
    },
    'hi9et05n': {
      'es': 'Contacto de emergencia',
      'en': 'Emergency contact',
    },
    'yg7w948u': {
      'es': 'Horarios de comida',
      'en': 'Lunch hours',
    },
    'enbiolph': {
      'es': 'Habilitar modo escuro',
      'en': 'enable dark mode',
    },
    '3wbx0rhj': {
      'es': 'Switch to Light Mode',
      'en': 'Switch to Light Mode',
    },
    '15mcwh4a': {
      'es': 'Eliminar cuenta',
      'en': 'Delete account',
    },
    '32f18q2m': {
      'es': 'Otros',
      'en': 'Others',
    },
    'pmoyf4jr': {
      'es': 'Cerrar sesión',
      'en': 'Sign off',
    },
    'ocw6xdad': {
      'es': 'Mi perfil',
      'en': 'My profile',
    },
    'rnkj7p33': {
      'es': 'Perfil',
      'en': 'Profile',
    },
  },
  // Registros_Animo
  {
    '8sqib642': {
      'es': 'Mis registros',
      'en': 'my records',
    },
    's53zxzuw': {
      'es': 'Registros',
      'en': 'Records',
    },
  },
  // Animoo
  {
    'yjik19vm': {
      'es': '¿Cómo te sientes ahora?',
      'en': 'How do you feel now?',
    },
    'nbklbj8s': {
      'es': 'Escribe una nota',
      'en': 'write a note',
    },
    'xft62tnf': {
      'es': 'Guardar',
      'en': 'Save',
    },
    'hgn29lcj': {
      'es': 'Estado de ánimo',
      'en': 'mood',
    },
    'k73i5y05': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Ayuda
  {
    'uglm36nk': {
      'es': '¡Estamos contigo!',
      'en': 'We are with you!',
    },
    '7t8gpd0z': {
      'es': 'Ayuda Profesional',
      'en': 'Professional Help',
    },
    'hi4pcmyw': {
      'es':
          'Las personas que se sientan estresadas, tristes o con alguna alteración emocional, no deben esperar a que el problema avance, pueden recibir apoyo emocional u orientación en el portal o redes de la línea de la vida, o marcando al número: ',
      'en':
          'People who feel stressed, sad or with some emotional disturbance, should not wait for the problem to progress, they can receive emotional support or guidance on the portal or networks of the life line, or by dialing the number:',
    },
    'fstz9v20': {
      'es': '800 - 911 - 2000',
      'en': '800 - 911 - 2000',
    },
    'x1p3ljcq': {
      'es': 'Línea de la vida',
      'en': 'Line of life',
    },
    'wfy0fj94': {
      'es': 'Contacto personal',
      'en': 'Personal contact',
    },
    'x9su1bc0': {
      'es': 'Ayuda',
      'en': 'Aid',
    },
    'ncefj7h5': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Editar_Perfil
  {
    'siou526d': {
      'es': 'Cambiar foto',
      'en': 'Change photo',
    },
    'yygc1ift': {
      'es': 'Cambiar nombre',
      'en': 'Rename',
    },
    'hwu9yght': {
      'es': 'Cambiar contraseña',
      'en': 'Change Password',
    },
    'fugj3qmn': {
      'es': 'Guardar cambios',
      'en': 'Save Changes',
    },
    '4v9sda22': {
      'es': 'Editar perfil',
      'en': 'Edit profile',
    },
  },
  // Contacto_Emergencia
  {
    'h9cqz7iq': {
      'es':
          'Nos las arreglamos con un poco de ayuda de nuestros familiares o amigos.',
      'en': 'We get by with a little help from our family or friends.',
    },
    'pgsly3in': {
      'es':
          'Ingrese el número de teléfono de un amigo cercano o familiar que pueda ser  de ayuda para que puedas comunicarte fácilmente si lo necesitas. \nÉsta información es solo para tu uso y nunca será compartida con nadie.',
      'en':
          'Enter the phone number of a close friend or family member who can be of assistance so you can easily get in touch if you need to. This information is for your use only and will never be shared with anyone.',
    },
    'jbirguda': {
      'es': 'Nombre de contacto',
      'en': 'contact name',
    },
    '9bc7v0bh': {
      'es': 'Número de contacto',
      'en': 'Contact number',
    },
    '7vq7bokq': {
      'es': 'Guardar',
      'en': 'Save',
    },
    's1a6qx2o': {
      'es': 'Contacto',
      'en': 'Contact',
    },
    'w02g45u2': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Contacto_Emergencia2
  {
    'uw1r0nj6': {
      'es': 'Algunas veces es bueno escuchar una voz familiar',
      'en': 'Sometimes it&#39;s good to hear a familiar voice',
    },
    '8wyxxq20': {
      'es': 'Llamar ahora',
      'en': 'call now',
    },
    '1rmrb1p0': {
      'es': 'Regresar',
      'en': 'To return',
    },
    '28ohfpnq': {
      'es': 'Page Title',
      'en': 'Page Title',
    },
    '0ls92jzr': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // RegistroHorarioComida
  {
    '5v1cjf7y': {
      'es': 'Desayuno',
      'en': 'Breakfast',
    },
    'sra7xvee': {
      'es': 'Comida',
      'en': 'Food',
    },
    'w82mj21t': {
      'es': 'Cena',
      'en': 'Dinner',
    },
    'h3ohzwme': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'oji6ki5o': {
      'es': 'Aceptar',
      'en': 'To accept',
    },
    'okwoyr1s': {
      'es': 'Mis horarios',
      'en': 'My schedules',
    },
    'edzyqnsn': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // EliminarCuenta
  {
    '98xub8rl': {
      'es': 'No te vayas :(',
      'en': 'Do not go :(',
    },
    'dcxqp5g6': {
      'es':
          'Tu cuenta y toda la información que esta en ella se eliminará, ¿Estas completamente seguro/a de esta acción?',
      'en':
          'Your account and all the information that is in it will be deleted, are you completely sure of this action?',
    },
    'ma4dcmcm': {
      'es': 'Correo electrónico ',
      'en': 'Email',
    },
    'ww9ckl6t': {
      'es': 'Ingresa tu correo electrónico ',
      'en': 'Enter your email',
    },
    'pub6fl3b': {
      'es': 'Contraseña ',
      'en': 'Password',
    },
    'vyflqjwu': {
      'es': 'Ingresa tu contraseña ',
      'en': 'Enter your password',
    },
    '7r7xegaf': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'n1zlm7hj': {
      'es': 'Aceptar',
      'en': 'To accept',
    },
    '285ei6gn': {
      'es': 'Eliminar cuenta',
      'en': 'Delete account',
    },
    '7gwskk12': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Felicitacion_Journaling
  {
    'qnisxeod': {
      'es': '¡Lo hiciste!',
      'en': 'You did it!',
    },
    'bm92nnf1': {
      'es':
          'Llevar un diario lo ayuda a integrar nuevas experiencias, realizar un seguimiento de tu progreso, solidificar tu salud y apreciar tus fortalezas. Estás bien encaminado para comprender y manejar tus sentimientos.\n¡Escribe a diario para obtener los mejores resultados!',
      'en':
          'Keeping a journal helps you integrate new experiences, track your progress, solidify your health, and appreciate your strengths. You are well on your way to understanding and managing your feelings. Write daily for best results!',
    },
    '6vkm5gp7': {
      'es': 'Seguir',
      'en': 'To follow',
    },
    'uwpj6o8h': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Informacion_Personal
  {
    '1ycarbqd': {
      'es': 'Nombre',
      'en': 'Name',
    },
    '6k0waiaa': {
      'es': '(123) 456-7890',
      'en': '(123) 456-7890',
    },
    'u6c6x16r': {
      'es': 'Phone Number',
      'en': 'phone number',
    },
    'pmlxlvfr': {
      'es': '(123) 456-7890',
      'en': '(123) 456-7890',
    },
    '4ii9bfx3': {
      'es': 'Phone Number',
      'en': 'phone number',
    },
    'k1ra2ybr': {
      'es': '(123) 456-7890',
      'en': '(123) 456-7890',
    },
    'gqcumy1p': {
      'es': 'Phone Number',
      'en': 'phone number',
    },
    'roc5p4cz': {
      'es': '(123) 456-7890',
      'en': '(123) 456-7890',
    },
    'fvkuj6a0': {
      'es': 'Información personal',
      'en': 'Personal information',
    },
    '56cavlja': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // afkxd
  {
    'tfweh2pr': {
      'es': 'AFK',
      'en': 'AFK',
    },
    'qbok1hva': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // SeleccionMascotaCopy
  {
    '7tmmxkig': {
      'es': 'Seleccionar',
      'en': 'Select',
    },
    'sgy7wwin': {
      'es': 'Selecciona a tu acompañante',
      'en': 'Select your companion',
    },
    '8dcba72t': {
      'es': 'seleccion',
      'en': 'selection',
    },
  },
  // test
  {
    'agx4siqj': {
      'es': 'Page Title',
      'en': 'Page Title',
    },
    '8pcc8yj8': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // pdfTest
  {
    'zemlzof0': {
      'es': 'Categorize Transaction',
      'en': 'Categorize Transaction',
    },
    '0nfulcmz': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // BotonesHS
  {
    'tai7qdmt': {
      'es': 'Alimentar acompañante',
      'en': 'feed companion',
    },
    'yhm8jylj': {
      'es': 'Escribe lo que sientes',
      'en': 'write what you feel',
    },
    'wllrm61s': {
      'es': 'Pedir Ayuda',
      'en': 'Ask for help',
    },
  },
  // AnimacionAlimentar
  {
    'b1chwfkg': {
      'es': 'Gracias',
      'en': 'Thank you',
    },
  },
  // LIST
  {
    'lg27nk75': {
      'es': 'Project Name',
      'en': 'Project Name',
    },
    '4y21q8ii': {
      'es': '4 Folders',
      'en': '4 folders',
    },
    'p1qfd5hj': {
      'es': '3 upcoming due dates',
      'en': '3 upcoming due dates',
    },
    '82aiov42': {
      'es': 'Project Name',
      'en': 'Project Name',
    },
    '5bwh7bs9': {
      'es': '4 Folders',
      'en': '4 folders',
    },
    'tbm07k83': {
      'es': '3 upcoming due dates',
      'en': '3 upcoming due dates',
    },
    '4bwncp52': {
      'es': 'Project Name',
      'en': 'Project Name',
    },
    'jbre3skk': {
      'es': '4 Folders',
      'en': '4 folders',
    },
    '899fyxks': {
      'es': '3 upcoming due dates',
      'en': '3 upcoming due dates',
    },
  },
  // Textfield
  {
    '019239y5': {
      'es': 'Enter post details here...',
      'en': 'Enter post details here...',
    },
  },
  // Miscellaneous
  {
    'gzeefa2s': {
      'es': '',
      'en': '',
    },
    'virl8j5h': {
      'es': '',
      'en': '',
    },
    'rrdjtoxc': {
      'es': 'Permitir que Devii mande notificaciones',
      'en': 'Allow Devii to send notifications',
    },
    '9rocbco4': {
      'es': 'Permitir que Devii acceda a tus contactos',
      'en': 'Allow Devii to access your contacts',
    },
    '76t32mr2': {
      'es': '',
      'en': '',
    },
    'sh1rpllo': {
      'es': '',
      'en': '',
    },
    'gqs76yun': {
      'es': '',
      'en': '',
    },
    'viwt52sf': {
      'es': '',
      'en': '',
    },
    'a4u92rsm': {
      'es': '',
      'en': '',
    },
    '84yu2hj4': {
      'es': '',
      'en': '',
    },
    'ppg3yng6': {
      'es': '',
      'en': '',
    },
    'z2gmz3tf': {
      'es': '',
      'en': '',
    },
    '4uu6ounm': {
      'es': '',
      'en': '',
    },
    'etd6o341': {
      'es': '',
      'en': '',
    },
    'piovyiqp': {
      'es': '',
      'en': '',
    },
    'px9br7vi': {
      'es': '',
      'en': '',
    },
    '5qvyooyv': {
      'es': '',
      'en': '',
    },
    'zp9qsw2e': {
      'es': '',
      'en': '',
    },
    'jpbvgw15': {
      'es': '',
      'en': '',
    },
    'buqf54h5': {
      'es': '',
      'en': '',
    },
    'o0032ud2': {
      'es': '',
      'en': '',
    },
    '8byn1jie': {
      'es': '',
      'en': '',
    },
    'cmimt54y': {
      'es': '',
      'en': '',
    },
    '3pyj4yk5': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
