# lyx2pdf :notebook_with_decorative_cover:

Github action to compile Lyx/Latex documents and convert to pdf

## Example

> Examples of usage

```yml
name: Lyx2PDF
on: [push]
jobs:
  lyx2pdf:
    runs-on: ubuntu-latest
    steps:
      - name: Set up Git repository
        uses: actions/checkout@v2
      - name: Compile LaTeX document
        uses: vaggeliskls/lyx2pdf@v1
        with:
          root_file: main.lyx
```

> Examples of usage with commit pdf

```yml
name: Lyx2PDF
on: [push]
jobs:
  lyx2pdf:
    runs-on: ubuntu-latest
    steps:
      - name: Set up Git repository
        uses: actions/checkout@v2

      - name: Compile Lyx document
        uses: vaggeliskls/lyx2pdf@v1
        with:
          root_file: main.lyx

      - name: Commit and push
        run: |
          git add .
          git commit -m "docs: Update Pdf"
          git push origin <branch-name>
        shell: bash
```

## License

MIT
