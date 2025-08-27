## Python 3.14 (crashes)

```shell
PYVER=3.14-rc docker compose up --build
```

## Python 3.13 (works!)

```shell
PYVER=3.13 docker compose up --build
```

Test the root path

```console
$ http --print=b :8000
{
    "Hello": "World"
}
```
