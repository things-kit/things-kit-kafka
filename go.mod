module github.com/things-kit/things-kit-kafka

go 1.23.0

toolchain go1.24.4

require (
	github.com/segmentio/kafka-go v0.4.47
	github.com/spf13/viper v1.21.0
	github.com/things-kit/core v0.0.0
	github.com/things-kit/things-kit-messaging v0.0.0
	go.uber.org/fx v1.24.0
)

require (
	github.com/fsnotify/fsnotify v1.9.0 // indirect
	github.com/go-viper/mapstructure/v2 v2.4.0 // indirect
	github.com/klauspost/compress v1.17.0 // indirect
	github.com/pelletier/go-toml/v2 v2.2.4 // indirect
	github.com/pierrec/lz4/v4 v4.1.15 // indirect
	github.com/sagikazarmark/locafero v0.11.0 // indirect
	github.com/sourcegraph/conc v0.3.1-0.20240121214520-5f936abd7ae8 // indirect
	github.com/spf13/afero v1.15.0 // indirect
	github.com/spf13/cast v1.10.0 // indirect
	github.com/spf13/pflag v1.0.10 // indirect
	github.com/subosito/gotenv v1.6.0 // indirect
	go.uber.org/dig v1.19.0 // indirect
	go.uber.org/multierr v1.11.0 // indirect
	go.uber.org/zap v1.27.1 // indirect
	go.yaml.in/yaml/v3 v3.0.4 // indirect
	golang.org/x/sys v0.29.0 // indirect
	golang.org/x/text v0.28.0 // indirect
)

// Replace with local paths for development
// Remove these before publishing
replace github.com/things-kit/core => ../things-kit

replace github.com/things-kit/things-kit-messaging => ../things-kit-messaging
