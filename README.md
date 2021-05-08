## Makefile Tutorail Project

This is an example repository for my tutorial on **Streamline Projects with Makefile**. [ **Generated using** [Cookiecutter Python CLI](https://github.com/yankeexe/cookiecutter-python-cli) ]

<a href="https://youtu.be/vybdPTfNLo4">
<img src="https://i.imgur.com/8VkzrmE.png" alt="Streamling projects with Makefile" width=600>
</a>

## Usage

1. `cd` into project directory.

2. Create a virtual environment.

```bash
$ make venv
```

3. Activate it.

```bash
$ source venv/bin/activate
```

4. Install development dependencies with editable mode to test the CLI.

```bash
$ make install
```

## Take your CLI for a spin

This Cookiecutter comes with two generic CLI commands, namely, `init` and `show`.

```bash
$ yocli init
```

```bash
$ yocli show
```

### Test with Docker

CLI commands can be tested with Docker.

1. Build an image for the CLI.

   Image is tagged with the same name as the `cli_command`.

```bash
$ make docker-image
```

2. Run the command inside the container.

```bash
$ docker-run --rm yocli init
```

## Documentation

1. Install documentation-related dependencies.

```bash
$ make docs
```

2. Serve the docs locally.

```bash
$ make serve-docs
```

## Distribution

> **NOTE**
>
> Make sure you have account in [PyPI](https://pypi.org/account/register/) before you try this out.

To publish you CLI to PyPI, run:

```bash
$ make distributions
```

`dist` directory will be created inside your project directory. Upload it to PyPI using:

```bash
$ twine dist/*
```

## Help

For help related to make commands.

```bash
$ make help
```
