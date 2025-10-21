# BusTracker

Aplicação Mobile para o projeto BusTracker.

## Pré-requisitos

1. [Instale o Flutter](https://docs.flutter.dev/get-started/install) na versão 3.24 ou superior, incluindo o Dart SDK que já acompanha a instalação.
2. Execute `flutter doctor` e resolva todos os avisos (Android SDK, Xcode e Chrome, dependendo da plataforma que deseja utilizar).
3. Instale o [Firebase CLI](https://firebase.google.com/docs/cli) se desejar executar os emuladores ou implantar funções.

> **Dica:** Após instalar o Flutter, adicione `flutter` ao `PATH` e reinicie o terminal.

## Instalação das dependências

```bash
flutter pub get
```

Se estiver utilizando o Firebase em dispositivos físicos ou emuladores Android/iOS, certifique-se de que os arquivos `google-services.json` (Android) e `GoogleService-Info.plist` (iOS) estejam configurados com o seu projeto. Para gerar novas credenciais utilize o comando:

```bash
flutterfire configure
```

Para execução web, os valores usados em `lib/backend/firebase/firebase_config.dart` já contêm as chaves necessárias.

## Executando o aplicativo

### Android/iOS

1. Inicie um emulador (Android Studio ou Xcode) **ou** conecte um dispositivo físico com a depuração USB habilitada.
2. Rode o aplicativo:

   ```bash
   flutter run
   ```

   Para escolher o dispositivo utilize `flutter run -d <device-id>`.

### Web (Chrome)

```bash
flutter run -d chrome
```

## Testes

```bash
flutter test
```

## Problemas comuns

| Sintoma | Correção |
| --- | --- |
| `bash: flutter: command not found` | Verifique se o Flutter está instalado e presente no `PATH`. |
| Firebase falha ao inicializar no Android/iOS | Gere novamente os arquivos de configuração com `flutterfire configure`. |
| Erros de versão de SDK | Execute `flutter --version` para confirmar se está usando a versão recomendada (>= 3.24). |

Em caso de dúvidas adicionais, consulte a documentação oficial do Flutter e do Firebase.
