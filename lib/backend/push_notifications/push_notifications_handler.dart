import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: FlutterFlowTheme.of(context).primaryBackground,
          child: Image.asset(
            'assets/images/D4.png',
            fit: BoxFit.scaleDown,
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'Bienvenida': (data) async => BienvenidaWidget(),
  'Registro': (data) async => RegistroWidget(),
  'Perfil': (data) async => PerfilWidget(),
  'ListaRegistros': (data) async => ListaRegistrosWidget(),
  'metas': (data) async => MetasWidget(),
  'SeleccionMascotaMain': (data) async => SeleccionMascotaMainWidget(),
  'Animoo': (data) async => AnimooWidget(),
  'Ayuda': (data) async => AyudaWidget(),
  'Contacto_Emergencia': (data) async => ContactoEmergenciaWidget(),
  'recordatoriosComida': (data) async => RecordatoriosComidaWidget(),
  'Editar_Perfil': (data) async => EditarPerfilWidget(),
  'EliminarCuenta': (data) async => EliminarCuentaWidget(),
  'Felicitacion_Journaling': (data) async => FelicitacionJournalingWidget(),
  'Felicitacion_horario_comida': (data) async =>
      FelicitacionHorarioComidaWidget(),
  'CambiarContrasena': (data) async => CambiarContrasenaWidget(),
  'meditacion': (data) async => MeditacionWidget(),
  'personaFeli': (data) async => PersonaFeliWidget(),
  'tomarAgua': (data) async => TomarAguaWidget(),
  'formComida': (data) async => FormComidaWidget(),
  'reflexiones': (data) async => ReflexionesWidget(),
  'actoAmabilidad': (data) async => ActoAmabilidadWidget(),
  'vozInterna': (data) async => VozInternaWidget(),
  'acercaDe': (data) async => AcercaDeWidget(),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
