"""Package setup"""
import setuptools


with open("README.md", "r") as f:
    long_description = f.read()

requirements = ["click", "rich<=7.1.0", "simple-term-menu", "requests"]


setuptools.setup(
    name="python_project",
    version="0.0.1",
    author="Yankee Maharjan",
    description="This CLI tool does awesome things.",
    packages=setuptools.find_packages(
        exclude=["dist", "build", "*.egg-info", "tests"]
    ),
    long_description=long_description,
    long_description_content_type="text/markdown",
    install_requires=requirements,
    entry_points={"console_scripts": ["yocli = python_project.app:cli"]},
    classifiers=[
        "Programming Language :: Python :: 3.6",
        "Programming Language :: Python :: 3.7",
        "Programming Language :: Python :: 3.8",
        "Operating System :: OS Independent",
        "Development Status :: 4 - Beta",
    ],
)
