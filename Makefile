
fix:
	dart fix --apply
	dart format lib -l 200

get:
	fvm flutter clean
	fvm flutter pub get

gen:
	fvm flutter clean
	fvm flutter pub get
	fvm flutter pub run build_runner build --delete-conflicting-outputs
	dart format lib -l 200

watch:
	fvm flutter pub run build_runner watch --delete-conflicting-outputs
