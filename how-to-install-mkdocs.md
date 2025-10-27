# Como installar mkdocs
Mkdocs es una herramienta de código abierto que genera sitios web estáticos a partir de documentación escrita en Markdown

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh //instala mkdocs
mkdir mkdocs-test //crea la carpeta de markdown con la que vas a trabajar
cd mkdocs-test //te lleva a la carpeta que acabas de crear
uv init
uv add mkdocs mkdocs-material //instala librerías para mkdocs
uv run mkdocs new . //inicia mkdocs
uv run mkdocs serve //inicia el servidor de mkdocs
```
