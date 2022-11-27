vim9script

nmap <buffer> p <Plug>(qf-preview-open)
b:qfpreview = {
    halfpagedown: 'd',
    halfpageup: 'u',
    fullpagedown: 'f',
    fullpageup: 'b',
    close: "\<Esc>",
    number: true,
    offset: 5,
    sign: {text: '>>', texthl: 'Todo'},
    height: 20
}

nn <buffer> k <Plug>(qf_qf_previous)
nn <buffer> j <Plug>(qf_qf_next)
nn <buffer> H <Plug>(qf_older)
nn <buffer> L <Plug>(qf_newer)
nn <buffer> { <Plug>(qf_previous_file)
nn <buffer> } <Plug>(qf_next_file)
