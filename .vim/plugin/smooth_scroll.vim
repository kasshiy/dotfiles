vim9script

# smooth scroll

def Move(diff: number, timer: number)
  var length = abs(diff)
  if diff == 0
    return
  elseif diff > 0
    execute $"normal! {length}\<C-e>{length}j"
  else
    execute $"normal! {length}\<C-y>{length}k"
  endif
enddef

export def Smooth_scroll(diff: number)
  const stop_time = 10
  var smooth_scroll_timer = []
  var working_timer = get(smooth_scroll_timer, 0)
  var rep = &scroll / abs(diff)
  if !empty(timer_info(working_timer))
    timer_stop(working_timer)
  endif
  if (diff > 0 && line('$') == line('w$')) || (diff < 0 && line('w0') == 1)
    return
  endif
  smooth_scroll_timer -> add(timer_start(stop_time, (id) => Move(diff, id), {repeat: rep}))
enddef

nmap <silent> <Plug>(smooth-scroll-up)     <cmd>call <SID>Smooth_scroll(-3)<CR>
nmap <silent> <Plug>(smooth-scroll-down)   <cmd>call <SID>Smooth_scroll(3)<CR>
vmap <silent> <Plug>(smooth-scroll-up-v)   <cmd>call <SID>Smooth_scroll(-3)<CR>
vmap <silent> <Plug>(smooth-scroll-down-v) <cmd>call <SID>Smooth_scroll(3)<CR>

nmap <C-u> <Plug>(smooth-scroll-up)
nmap <C-d> <Plug>(smooth-scroll-down)
vmap <C-u> <Plug>(smooth-scroll-up-v)
vmap <C-d> <Plug>(smooth-scroll-down-v)
