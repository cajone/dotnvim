" Use omni source.
call ddc#custom#patch_global('sources', ['omni'])

" Change source options
call ddc#custom#patch_global('sourceOptions', {
      \ 'omni': {'mark': 'O'},
      \ })

" Example: Use vimtex
"call vimtex#init()
"call ddc#custom#patch_filetype(['tex'], 'sourceOptions', {
"      \ 'omni': {
"      \   'forceCompletionPattern': g:vimtex#re#deoplete
"      \ },
"      \ })
"call ddc#custom#patch_filetype(['tex'], 'sourceParams', {
"      \ 'omni': {'omnifunc': 'vimtex#complete#omnifunc'},
"      \ })
