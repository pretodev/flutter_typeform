# flutter_typeform

Embeded Typeform to Flutter Web



## Usage

Add Typeform embeded js script on web app

```dart
await _flutterTypeformPlugin.preparePage();
```


and open form from id

```dart
await _flutterTypeformPlugin.openForm('form-id', onSubmitted: () {
  print('Form submitted');
});
```