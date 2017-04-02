[![Build Status](https://travis-ci.org/JenteA/CompileLaTex.svg?branch=master)](https://travis-ci.org/JenteA/CompileLaTex)
# CompileLaTex

## Introduction
The CompileLaTex plug-in is an easy way to compile LaTeX using a compiler of choice and displaying the output in PDF using a PDF reader of choice.
This is only tested using xelatex and okular but should work with any LaTeX compiler and PDF reader as long as the compiler works like 
`compiler document.tex`
and the PDF reader works like
`reader document.pdf`. 
This will get tested using different compilers and readers and there will be tests written to use with Travis CI.

## Installation
To install this plug-in using Vundle and Pathogen you need to add `Plugin 'https://github.com/JenteA/CompileLaTex.git'` to your .vimrc. You also need to add the following to your .vimrc.

```
map <Your key combination> :CompileLaTex<CR>        
let g:CompileLaTexPDFReader="your PDF reader"
let g:CompileLaTexCompiler="your LaTeX compiler"
```
