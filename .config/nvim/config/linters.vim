let g:neomake_java_enabled_makers= ['javac']

" need to install file using pip2/pip3 install flake8 -U
" need to install file using pip2/pip3 install vulture -U
let g:neomake_python_enabled_makers = ['flake8', 'pep8', 'vulture']
" E501 is line length of 80 characters
let g:neomake_python_flake8_maker = { 'args': ['--ignore=E115, E266, E501'], }
let g:neomake_python_pep8_maker = {'args': ['--max-line-length=100', '--ignore=E115,E266'], }

let g:neomake_c_enabled_makers = ['clang', 'gcc']

let g:neomake_coffeescript_enabled_makers = ['coffeelint']

let g:neomake_css_enabled_makers = ['csslint']

let g:neomake_markdown_enabled_makers = ['markdownlint']

let g:neomake_ruby_enabled_makers = ['rubocop']

let g:neomake_shell_enabled_makers = ['shellcheck']

let g:neomake_typescript_enabled_makers = ['tsc']

let g:neomake_vimscript_enabled_makers = ['vimlint']


let g:neomake_javascript_jshint_maker = { 'args': ['--verbose'], 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)', }
let g:neomake_javascript_enabled_makers = ['jshint']





" run neomake on current file on every write
autocmd! BufWritePost * Neomake

