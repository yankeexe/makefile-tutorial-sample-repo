"""
Entrypoint for CLI.
"""
import click

from python_project.commands import init, show


@click.group()
def cli():
    pass


cli.add_command(init)
cli.add_command(show)
