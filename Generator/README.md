This is a utility package to generate swift-otel-semantic-conventions files. It is implemented as a completely different Swift package in order to avoid mixing its depenendencies with that of the main package.

To use it, enter this directory in a terminal and run:

```
swift run Generator --version v1.29.0
```

Please make sure to also run `swift-format` on your changes to keep the formatting consistent, for example by running
`./scripts/check-swift-format.sh` after you staged your changes.

The version can be varied to generate for different versions of the otel semantic conventions.

For a full description of the options, run:

```
swift run Generator --help
```
