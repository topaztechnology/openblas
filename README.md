# OpenBLAS build image

This image builds a version of x64 OpenBLAS with dynamic architecture support & heap allocations enabled.
This is useful to prevent stack overflow problems when calling from the JVM with netlib-java.

## Supported tags and respective `Dockerfile` links
`latest` [(Dockerfile)](https://github.com/topaztechnology/topaz-openblas/blob/master/Dockerfile) - the latest release

|   Tag    | OpenBLAS  | Dockerfile |
|----------|-----------|------------|
| `0.3.20` |  `0.3.20` | [(Dockerfile)](https://github.com/topaztechnology/topaz-openblas/blob/0.3.20/Dockerfile) |
