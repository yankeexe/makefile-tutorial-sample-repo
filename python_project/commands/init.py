"""
CLI initialization command.
"""
import click
from rich.prompt import Prompt

from python_project import console
from python_project.constants import WELCOME_MESSAGE


@click.command()
def init():
    """
    CLI Initialization demo.
    """
    console.print(WELCOME_MESSAGE)
