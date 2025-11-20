command lines:

- flutter run -d chrome
- flutter pub outdated
- flutter pub upgrade
- flutter test
- flutter build web
- flutter build web --output=../docs # to use github pages and show the page from our docs
- flutter build web --output=../docs --base-href="/frontend-mentor-exercise-40-calculator-app/"
- flutter build web --base-href="/frontend-mentor-exercise-40-calculator-app/"

issue with git bash

MSYS2_ARG_CONV_EXCL="--base-href" flutter build web \
  --output=../docs \
  --base-href=/frontend-mentor-exercise-40-calculator-app/
  
  
  
  
  
flutter clean
flutter pub get
flutter build web --output=../docs --base-href="/frontend-mentor-exercise-40-calculator-app/"
