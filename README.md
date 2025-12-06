# Things-Kit Kafka

**Kafka Consumer Module for Things-Kit**

Lifecycle-managed Kafka consumer implementation for Things-Kit applications.

## Installation

```bash
go get github.com/things-kit/things-kit-kafka
```

## Features

- Automatic Kafka consumer lifecycle management
- Implements the messaging.Consumer interface
- Configuration via Viper or environment variables
- Graceful shutdown
- Message handler registration via dependency injection

## Quick Start

```go
package main

import (
    "context"
    "github.com/things-kit/things-kit/app"
    "github.com/things-kit/things-kit/logging"
    "github.com/things-kit/things-kit/viperconfig"
    "github.com/things-kit/things-kit-kafka"
    "github.com/things-kit/things-kit-messaging"
)

func main() {
    app.New(
        viperconfig.Module,
        logging.Module,
        kafka.ConsumerModule,
        kafka.AsMessageHandler(NewUserEventHandler),
    ).Run()
}

type UserEventHandler struct {
    // your dependencies
}

func NewUserEventHandler() *UserEventHandler {
    return &UserEventHandler{}
}

func (h *UserEventHandler) Handle(ctx context.Context, msg messaging.Message) error {
    // process message
    return nil
}

func (h *UserEventHandler) Topic() string {
    return "user-events"
}
```

## Configuration

Via `config.yaml`:
```yaml
kafka:
  brokers:
    - localhost:9092
  group_id: my-consumer-group
  auto_offset_reset: earliest
```

Or environment variables:
```bash
export KAFKA_BROKERS=localhost:9092,broker2:9092
export KAFKA_GROUP_ID=my-consumer-group
export KAFKA_AUTO_OFFSET_RESET=earliest
```

## License

MIT License - see LICENSE file for details
