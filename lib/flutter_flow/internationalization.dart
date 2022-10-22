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
      'en': '',
    },
    'hcfihmnd': {
      'es':
          'Soy Devi y te doy la bienvenida a mi casa,  alguno de mis amigos y yo te apoyaremos en tu proceso de automonitoreo.',
      'en': '',
    },
    'ttypee78': {
      'es': 'Dame de comer',
      'en': '',
    },
    '8r1f64d7': {
      'es':
          'Me vas a alimentar en las horas que tú hayas comido, así estaré feliz.\n\n¡No te preocupes! Yo te voy a apoyar en recordarte con notificaciones en tus horas de comida, pero debes decírmelas antes.',
      'en': '',
    },
    'opp6bvdk': {
      'es': 'Anota tus sentimientos',
      'en': '',
    },
    'glw62prf': {
      'es':
          'Quiero que anotes como te sientes para que puedas monitorear tus sentimientos y tus estados de ánimo.\n\nEs un proceso difícil, pero espero que yo o mis amigos te podamos ayudar a mejorarte, eso nos haría muy feliz. ¡Tú puedes!',
      'en': '',
    },
    'ztrohci9': {
      'es': 'Empecemos',
      'en': '',
    },
  },
  // Registro
  {
    '47766fk1': {
      'es': '¡Hola soy Devii!',
      'en': '',
    },
    'v8mwum0i': {
      'es': 'Inicia sesión',
      'en': '',
    },
    '44pmpsf9': {
      'es': 'Correo electrónico ',
      'en': '',
    },
    '436qxv14': {
      'es': 'Ingresa tu correo electrónico ',
      'en': '',
    },
    '8up2shoh': {
      'es': 'Contraseña ',
      'en': '',
    },
    'us6u7nkh': {
      'es': 'Ingresa tu contraseña ',
      'en': '',
    },
    'ecjldo3a': {
      'es': 'Iniciar sesión ',
      'en': '',
    },
    'ryx22ldn': {
      'es': '¿Olvidaste tu contraseña?',
      'en': '',
    },
    's5ww4kq4': {
      'es': 'Crear cuenta',
      'en': '',
    },
    'l3pwopgg': {
      'es': 'Correo electrónico ',
      'en': '',
    },
    'y4bxtvw1': {
      'es': 'Ingresa tu correo electrónico ',
      'en': '',
    },
    'yw5xth1j': {
      'es': 'Contraseña',
      'en': '',
    },
    'tpa63jkc': {
      'es': 'Ingresa tu contraseña',
      'en': '',
    },
    'u0ydz3w7': {
      'es': 'Registrate',
      'en': '',
    },
    'o9kod5vv': {
      'es': 'Home',
      'en': '',
    },
  },
  // Home
  {
    'e0apsgr6': {
      'es': 'Casa de Devii',
      'en': '',
    },
    '72u32ube': {
      'es': 'Casa',
      'en': '',
    },
  },
  // Perfil
  {
    'mmkoo5zj': {
      'es': 'Ajustes',
      'en': '',
    },
    '1w1903ax': {
      'es': 'Horarios de comida',
      'en': '',
    },
    '3atj63xs': {
      'es': 'Eliminar Cuenta',
      'en': '',
    },
    'w1yj5ezk': {
      'es': 'Desconectarse',
      'en': '',
    },
    'x3urneen': {
      'es': 'Perfil',
      'en': '',
    },
    'huwzv4yp': {
      'es': 'Perfil',
      'en': '',
    },
  },
  // Perfil2
  {
    'gx0mjalu': {
      'es': 'User',
      'en': '',
    },
    '88fm08pw': {
      'es': 'correo',
      'en': '',
    },
    'hzs0sv1e': {
      'es': 'Editar perfil',
      'en': '',
    },
    'hi9et05n': {
      'es': 'Contacto de emergencia',
      'en': '',
    },
    'yg7w948u': {
      'es': 'Horarios de comida',
      'en': '',
    },
    'enbiolph': {
      'es': 'Habilitar modo escuro',
      'en': '',
    },
    '3wbx0rhj': {
      'es': 'Switch to Light Mode',
      'en': '',
    },
    '15mcwh4a': {
      'es': 'Eliminar cuenta',
      'en': '',
    },
    '32f18q2m': {
      'es': 'Otros',
      'en': '',
    },
    'pmoyf4jr': {
      'es': 'Salir',
      'en': '',
    },
    'rnkj7p33': {
      'es': 'Prueba',
      'en': '',
    },
  },
  // Editar_Perfil
  {
    'siou526d': {
      'es': 'Cambiar foto',
      'en': '',
    },
    'yygc1ift': {
      'es': 'Cambiar nombre',
      'en': '',
    },
    'hwu9yght': {
      'es': 'Cambiar contraseña',
      'en': '',
    },
    'fugj3qmn': {
      'es': 'Guardar cambios',
      'en': '',
    },
  },
  // Calendarioxd
  {
    'ngt5lo5a': {
      'es': 'Nota',
      'en': '',
    },
    'hihivhd1': {
      'es': 'Mi viaje',
      'en': '',
    },
    'ce8jjavf': {
      'es': 'Home',
      'en': '',
    },
  },
  // Animoo
  {
    '31by4luo': {
      'es': 'Registra tu estado de ánimo',
      'en': '',
    },
    'yjik19vm': {
      'es': '¿Cómo te sientes ahora?',
      'en': '',
    },
    'b9p7btua': {
      'es': ' ',
      'en': '',
    },
    'cra5ow4a': {
      'es': ' ',
      'en': '',
    },
    '2m97k0c9': {
      'es': ' ',
      'en': '',
    },
    'zwyboupg': {
      'es': ' ',
      'en': '',
    },
    'il9gs0jk': {
      'es': ' ',
      'en': '',
    },
    'lcgnovz6': {
      'es': ' ',
      'en': '',
    },
    '7l76rb06': {
      'es': ' ',
      'en': '',
    },
    'xft62tnf': {
      'es': 'Guardar',
      'en': '',
    },
    'k73i5y05': {
      'es': 'Home',
      'en': '',
    },
  },
  // Nota_EstadoAnimo
  {
    'mjie00fm': {
      'es': 'Escribe tu sentir',
      'en': '',
    },
    'yghrux2w': {
      'es': 'Cuentame que pasa...',
      'en': '',
    },
    'ewdmav43': {
      'es': 'Guardar',
      'en': '',
    },
  },
  // Felicitacion_Journaling
  {
    'qnisxeod': {
      'es': '¡Lo hiciste!',
      'en': '',
    },
    'bm92nnf1': {
      'es':
          'Llevar un diario lo ayuda a integrar nuevas experiencias, realizar un seguimiento de tu progreso, solidificar tu salud y apreciar tus fortalezas. Estás bien encaminado para comprender y manejar tus sentimientos.\n¡Escribe a diario para obtener los mejores resultados!',
      'en': '',
    },
    '6vkm5gp7': {
      'es': 'Seguir',
      'en': '',
    },
    'uwpj6o8h': {
      'es': 'Home',
      'en': '',
    },
  },
  // Registros
  {
    'vu9yfkr5': {
      'es': 'Mis registros',
      'en': '',
    },
    's53zxzuw': {
      'es': 'Registros',
      'en': '',
    },
  },
  // RegistroHorarioComida
  {
    '5v1cjf7y': {
      'es': 'Desayuno',
      'en': '',
    },
    'sra7xvee': {
      'es': 'Comida',
      'en': '',
    },
    'w82mj21t': {
      'es': 'Cena',
      'en': '',
    },
    'h3ohzwme': {
      'es': 'Cancelar',
      'en': '',
    },
    'oji6ki5o': {
      'es': 'Aceptar',
      'en': '',
    },
    'prw1np1k': {
      'es': 'Registra tu horario',
      'en': '',
    },
    'edzyqnsn': {
      'es': 'Home',
      'en': '',
    },
  },
  // Ayuda
  {
    'uglm36nk': {
      'es': '¡Estamos contigo!',
      'en': '',
    },
    '7t8gpd0z': {
      'es': 'Ayuda Profesional',
      'en': '',
    },
    'hi4pcmyw': {
      'es':
          'Las personas que se sientan estresadas, tristes o con alguna alteración emocional, no deben esperar a que el problema avance, pueden recibir apoyo emocional u orientación en el portal o redes de la línea de la vida, o marcando al: ',
      'en': '',
    },
    'fstz9v20': {
      'es': '800 - 911 - 2000',
      'en': '',
    },
    'x1p3ljcq': {
      'es': 'Línea de la vida',
      'en': '',
    },
    'wfy0fj94': {
      'es': 'Contacto personal',
      'en': '',
    },
    'bxf3i4y6': {
      'es': 'Botón de ayuda',
      'en': '',
    },
    'ncefj7h5': {
      'es': 'Home',
      'en': '',
    },
  },
  // Contacto_Emergencia
  {
    'h9cqz7iq': {
      'es':
          'Nos las arreglamos con un poco de ayuda de nuestros familiares o amigos.',
      'en': '',
    },
    'pgsly3in': {
      'es':
          'Ingrese el número de teléfono de un amigo cercano o familiar que pueda ser  de ayuda para que puedas comunicarte fácilmente si lo necesitas. \nÉsta información es solo para tu uso y nunca será compartida con un tercero.',
      'en': '',
    },
    'jbirguda': {
      'es': 'Nombre de contacto',
      'en': '',
    },
    '9bc7v0bh': {
      'es': 'Número de contacto',
      'en': '',
    },
    '7vq7bokq': {
      'es': 'Guardar',
      'en': '',
    },
    'w02g45u2': {
      'es': 'Home',
      'en': '',
    },
  },
  // Contacto_EmergenciaCopy
  {
    'uw1r0nj6': {
      'es': 'Algunas veces es bueno escuchar una voz familiar',
      'en': '',
    },
    't2n5p9uf': {
      'es': 'Nombre de contacto',
      'en': '',
    },
    'sguzf31t': {
      'es': 'Número de contacto',
      'en': '',
    },
    '8wyxxq20': {
      'es': 'Llamar ahora',
      'en': '',
    },
    '1rmrb1p0': {
      'es': 'Regresar',
      'en': '',
    },
    '0ls92jzr': {
      'es': 'Home',
      'en': '',
    },
  },
  // PantallaDeFelicitacion
  {
    'twrpnewu': {
      'es': '¡Gracias por compartirmelo!',
      'en': '',
    },
    '0frmbzg0': {
      'es': '¡Yo sé que puedes!',
      'en': '',
    },
    '4hn73qwv': {
      'es': 'Seguir',
      'en': '',
    },
    'v9rk6oea': {
      'es': 'Home',
      'en': '',
    },
  },
  // SeleccionMascota
  {
    'ilim6c0w': {
      'es': 'Devi',
      'en': '',
    },
    'gv8ys18g': {
      'es': 'Ajolote',
      'en': '',
    },
    'n3rddbk6': {
      'es': 'Jali',
      'en': '',
    },
    '8v7xtjmw': {
      'es': 'Zorro',
      'en': '',
    },
    'emdv86hf': {
      'es': 'Sonam',
      'en': '',
    },
    'hcvxrub5': {
      'es': 'Gato',
      'en': '',
    },
    'y9yqh3mh': {
      'es': 'Raluca',
      'en': '',
    },
    'wjpaxqe6': {
      'es': 'Perro',
      'en': '',
    },
    'q8tybuce': {
      'es': 'Nosek',
      'en': '',
    },
    'h2ihv6z8': {
      'es': 'Dragón',
      'en': '',
    },
    'fef9d70y': {
      'es': 'Bobi',
      'en': '',
    },
    '89edhj47': {
      'es': 'Oso panda',
      'en': '',
    },
    '7fwxd295': {
      'es': 'Chork',
      'en': '',
    },
    '4lrkv46i': {
      'es': 'Conejo',
      'en': '',
    },
    'xtqjwgat': {
      'es': 'Mae',
      'en': '',
    },
    't2wy2k9b': {
      'es': 'Unicornio',
      'en': '',
    },
    '5d7xszk1': {
      'es': 'Listo',
      'en': '',
    },
    '6gae40i0': {
      'es': 'Selecciona a tu acompañante',
      'en': '',
    },
    'ap7gn3w0': {
      'es': 'Home',
      'en': '',
    },
  },
  // SeleccionMascotaCopy
  {
    'j1y4nlzb': {
      'es': 'Devi',
      'en': '',
    },
    'gl3zapfu': {
      'es': 'Ajolote',
      'en': '',
    },
    't6gct5u6': {
      'es': 'Listo',
      'en': '',
    },
    'kzi2ljlk': {
      'es': 'Selecciona tu acompañante',
      'en': '',
    },
    'oecpqvqg': {
      'es': 'Mascota',
      'en': '',
    },
  },
  // Informacion_Personal
  {
    '1ycarbqd': {
      'es': 'Nombre',
      'en': '',
    },
    '6k0waiaa': {
      'es': '(123) 456-7890',
      'en': '',
    },
    'u6c6x16r': {
      'es': 'Phone Number',
      'en': '',
    },
    'pmlxlvfr': {
      'es': '(123) 456-7890',
      'en': '',
    },
    '4ii9bfx3': {
      'es': 'Phone Number',
      'en': '',
    },
    'k1ra2ybr': {
      'es': '(123) 456-7890',
      'en': '',
    },
    'gqcumy1p': {
      'es': 'Phone Number',
      'en': '',
    },
    'roc5p4cz': {
      'es': '(123) 456-7890',
      'en': '',
    },
    'fvkuj6a0': {
      'es': 'Información personal',
      'en': '',
    },
    '56cavlja': {
      'es': 'Home',
      'en': '',
    },
  },
  // afkxd
  {
    'tfweh2pr': {
      'es': 'AFK',
      'en': '',
    },
    'qbok1hva': {
      'es': 'Home',
      'en': '',
    },
  },
  // BienvenidaX
  {
    'ess6fefq': {
      'es': '¡Hola!',
      'en': '',
    },
    'kpi1hr3c': {
      'es':
          'Soy Devi y te doy la bienvenida a mi casa, yo o alguno de mis amigos te apoyaremos en tu proceso de automonitoreo.',
      'en': '',
    },
    'eomtzs1r': {
      'es':
          'Me vas a alimentar en las horas que tú hayas comido, así estaré feliz.\n\n¡No te preocupes! Yo te voy a apoyar en recordarte tus horas de comida, pero debes decírmelas antes.',
      'en': '',
    },
    '7v4q2ivn': {
      'es':
          'En mi libreta vas a anotar como te sientes para que puedas monitorear tus sentimientos y tus estados de ánimo.\n\nEs un proceso difícil, pero espero que yo o mis amigos te podamos ayudar a mejorarte, eso nos haría muy feliz. ¡Tú puedes!',
      'en': '',
    },
    'azd0ezfq': {
      'es': 'Entendido',
      'en': '',
    },
    't3ksgpz6': {
      'es': 'La bienvenida',
      'en': '',
    },
    'h9fz0mlb': {
      'es': 'Home',
      'en': '',
    },
  },
  // EliminarCuenta
  {
    '98xub8rl': {
      'es': 'No te vayas :(',
      'en': '',
    },
    'dcxqp5g6': {
      'es':
          'Tu cuenta y toda la información que esta en ella se eliminará, ¿Estas completamente seguro/a de esta acción?',
      'en': '',
    },
    'ma4dcmcm': {
      'es': 'Correo electrónico ',
      'en': '',
    },
    'ww9ckl6t': {
      'es': 'Ingresa tu correo electrónico ',
      'en': '',
    },
    'pub6fl3b': {
      'es': 'Contraseña ',
      'en': '',
    },
    'vyflqjwu': {
      'es': 'Ingresa tu contraseña ',
      'en': '',
    },
    'n1zlm7hj': {
      'es': 'Aceptar',
      'en': '',
    },
    '7r7xegaf': {
      'es': 'Cancelar',
      'en': '',
    },
    'lo0pa2cc': {
      'es': 'Eliminar cuenta',
      'en': '',
    },
    '7gwskk12': {
      'es': 'Home',
      'en': '',
    },
  },
  // BotonesHS
  {
    'tai7qdmt': {
      'es': 'Alimentar acompañante',
      'en': '',
    },
    'yhm8jylj': {
      'es': 'Escribe lo que sientes',
      'en': '',
    },
    'wllrm61s': {
      'es': 'Pedir Ayuda',
      'en': '',
    },
  },
  // AnimacionAlimentar
  {
    'b1chwfkg': {
      'es': 'Gracias <3',
      'en': '',
    },
  },
  // LIST
  {
    'lg27nk75': {
      'es': 'Project Name',
      'en': '',
    },
    '4y21q8ii': {
      'es': '4 Folders',
      'en': '',
    },
    'p1qfd5hj': {
      'es': '3 upcoming due dates',
      'en': '',
    },
    '82aiov42': {
      'es': 'Project Name',
      'en': '',
    },
    '5bwh7bs9': {
      'es': '4 Folders',
      'en': '',
    },
    'tbm07k83': {
      'es': '3 upcoming due dates',
      'en': '',
    },
    '4bwncp52': {
      'es': 'Project Name',
      'en': '',
    },
    'jbre3skk': {
      'es': '4 Folders',
      'en': '',
    },
    '899fyxks': {
      'es': '3 upcoming due dates',
      'en': '',
    },
  },
  // Textfield
  {
    '019239y5': {
      'es': 'Enter post details here...',
      'en': '',
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
      'en': '',
    },
    '9rocbco4': {
      'es': 'Permitir que Devii acceda a tus contactos',
      'en': '',
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
