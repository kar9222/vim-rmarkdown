runtime syntax/pandoc.vim
PandocHighlight r
" rmarkdown recognizes embedded R differently than regular pandoc
exe 'syn region pandocRChunk '.
            \'start=/\(```\s*{\s*r.*\n\)\@<=\_^/ ' .
            \'end=/\_$\n\(\(\s\{4,}\)\=\(`\{3,}`*\|\~\{3,}\~*\)\_$\n\_$\)\@=/ '.
            \'contained containedin=pandocDelimitedCodeblock contains=@R'

syn region pandocInlineR matchgroup=Operator start=/`r\s/ end=/`/ contains=@R concealends

PandocHighlight python
" rmarkdown recognizes embedded R differently than regular pandoc
exe 'syn region pandocPythonChunk '.
            \'start=/\(```\s*{\s*python.*\n\)\@<=\_^/ ' .
            \'end=/\_$\n\(\(\s\{4,}\)\=\(`\{3,}`*\|\~\{3,}\~*\)\_$\n\_$\)\@=/ '.
            \'contained containedin=pandocDelimitedCodeblock contains=@python'

syn region pandocInlinePython matchgroup=Operator start=/`python\s/ end=/`/ contains=@Python concealends


" MINE -------------------------------------------

PandocHighlight julia
" rmarkdown recognizes embedded R differently than regular pandoc
exe 'syn region pandocJuliaChunk '.
            \'start=/\(```\s*{\s*julia.*\n\)\@<=\_^/ ' .
            \'end=/\_$\n\(\(\s\{4,}\)\=\(`\{3,}`*\|\~\{3,}\~*\)\_$\n\_$\)\@=/ '.
            \'contained containedin=pandocDelimitedCodeblock contains=@julia'

syn region pandocInlineJulia matchgroup=Operator start=/`julia\s/ end=/`/ contains=@Julia concealends

PandocHighlight stan
" rmarkdown recognizes embedded R differently than regular pandoc
exe 'syn region pandocJuliaChunk '.
            \'start=/\(```\s*{\s*stan.*\n\)\@<=\_^/ ' .
            \'end=/\_$\n\(\(\s\{4,}\)\=\(`\{3,}`*\|\~\{3,}\~*\)\_$\n\_$\)\@=/ '.
            \'contained containedin=pandocDelimitedCodeblock contains=@stan'

syn region pandocInlineStan matchgroup=Operator start=/`stan\s/ end=/`/ contains=@Stan concealends

PandocHighlight bash
" rmarkdown recognizes embedded R differently than regular pandoc
exe 'syn region pandocJuliaChunk '.
            \'start=/\(```\s*{\s*bash.*\n\)\@<=\_^/ ' .
            \'end=/\_$\n\(\(\s\{4,}\)\=\(`\{3,}`*\|\~\{3,}\~*\)\_$\n\_$\)\@=/ '.
            \'contained containedin=pandocDelimitedCodeblock contains=@bash'

syn region pandocInlineBash matchgroup=Operator start=/`bash\s/ end=/`/ contains=@Bash concealends

PandocHighlight vim
" rmarkdown recognizes embedded R differently than regular pandoc
exe 'syn region pandocJuliaChunk '.
            \'start=/\(```\s*{\s*vim.*\n\)\@<=\_^/ ' .
            \'end=/\_$\n\(\(\s\{4,}\)\=\(`\{3,}`*\|\~\{3,}\~*\)\_$\n\_$\)\@=/ '.
            \'contained containedin=pandocDelimitedCodeblock contains=@vim'

syn region pandocInlineVim matchgroup=Operator start=/`vim\s/ end=/`/ contains=@Vim concealends
