# insta_clone

insta user profile clone

## Environment setup

To generate the environment variables for the application run the following command

```
flutter pub run environment_config:generate --config=env_config.yaml
```

To run using an extension, eg. `dev` to use a local server run

```
flutter pub run environment_config:generate --config=env_config.yaml --config-extension=dev
```

## In order to generate any code with build runner please run the following

flutter pub run build_runner build --delete-conflicting-outputs

Please make sure to include

--no-sound-null-safety

in Run arguments for flutter run and flutter build
