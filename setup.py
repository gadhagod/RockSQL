import setuptools

setuptools.setup(
    name="RockSQL",
    version="1.0.0",
    author="Aarav Borthakur",
    author_email="gadhaguy13@gmail.com",
    description="An SQL shell for executing Rockset queries.",
    long_description=open("README.md", "r").read(),
    long_description_content_type="text/markdown",
    url="https://github.com/gadhagod/RockSQL",
    packages=setuptools.find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    install_requires=[
        "rockset",
        "colorama"
    ],
    scripts=["./rsql"],
    python_requires=">=3.6"
)