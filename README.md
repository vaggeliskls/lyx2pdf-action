# lyx2pdf :notebook_with_decorative_cover:

Github action to compile Lyx/Latex documents and convert to pdf

## Example

1.  Examples of usage

```yml
name: Lyx2PDF
on: [push]
jobs:
  lyx2pdf:
    runs-on: ubuntu-latest
    steps:
      - name: Set up Git repository
        uses: actions/checkout@v2
      - name: Generate Pdf from lyx
        uses: vaggeliskls/lyx2pdf@v1
        with:
          root_file: main.lyx
```

> The PDF file will be in the same folder as that of the Lyx source

2.  Example of usage with commit pdf

```yml
name: Lyx2PDF
on: [push]
jobs:
  lyx2pdf:
    runs-on: ubuntu-latest
    steps:
      - name: Set up Git repository
        uses: actions/checkout@v2

      - name: Generate Pdf from lyx
        uses: vaggeliskls/lyx2pdf@v1
        with:
          root_file: main.lyx

      - name: Commit and push
        run: |
          git config --global user.email "you@example.com"
          git config --global user.name "Your Name"
          git add .
          git commit -m "docs: Update Pdf"
          git push origin <branch-name>
        shell: bash
```

> Pdf File will be committed to the repository

3.  Example of usage with upload artifact

```yml
name: Lyx2PDF
on: [push]
jobs:
  lyx2pdf:
    runs-on: ubuntu-latest
    steps:
      - name: Set up Git repository
        uses: actions/checkout@v2

      - name: Generate Pdf from lyx
        uses: vaggeliskls/lyx2pdf@v1
        with:
          root_file: main.lyx

      - uses: actions/upload-artifact@v2
        with:
          name: PDF
          path: main.pdf
```

> To upload a zip containing the PDF file to the workflow tab

## License

MIT
