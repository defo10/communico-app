# Communico

Communico was a concept to connect Ukrainian refugees with bilingual people who can help them translate in another country.

I bootstrapped this app prototype using Flutter Flow, jitsi meet and firebase in a few days during the summer of 2022. The developement process was preceded by various interviews and usability studies of refugee helpers and bilingual people, and personal volunteering.

There's a corresponding mediator app [here](https://github.com/defo10/communico-mediator-app).

<img width="377" alt="Screen Shot 2022-06-23 at 11 27 20" src="https://user-images.githubusercontent.com/5160048/224329938-0c6da60d-8cbf-4f6a-8e62-b12b465e5565.png">
<img width="379" alt="Screen Shot 2022-06-23 at 11 28 00" src="https://user-images.githubusercontent.com/5160048/224329927-ab653b49-5cd5-4d8d-9103-11ad37fe5563.png">


## Getting Started

FlutterFlow projects are built to run on the Flutter _stable_ release.

### IMPORTANT:

For projects with Firestore integration, you must first run the following commands to ensure the project compiles:

```
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

This command creates the generated files that parse each Record from Firestore into a schema object.

### Getting started continued:

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
