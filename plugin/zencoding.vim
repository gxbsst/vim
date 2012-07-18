let s:sfile = expand("<sfile>:p:h")

function! ZenCodingExpandAbbr()
	
	python << EOF

import vim, os, sys, re

sys.path.append (vim.eval('s:sfile'))

from zencoding import zen_core

cur_line = vim.current.line
cur_index = vim.current.window.cursor[1]
cur_line_num = vim.current.window.cursor[0] - 1


already_placed = 0
def get_insertion_point(text):
	global already_placed
	if not already_placed:
		already_placed = 1
		return '$1'
	return ''
zen_core.insertion_point = get_insertion_point
zen_core.sub_insertion_point = get_insertion_point

abbr, start_index = (None, None)
if cur_index + 1 == len(cur_line):
	cur_index += 1
	abbr, start_index = zen_core.find_abbr_in_line(cur_line, cur_index)
	if not abbr:
		cur_index -= 1
if not abbr:
	abbr, start_index = zen_core.find_abbr_in_line(cur_line, cur_index)

if abbr:
	result = cur_line[0:start_index] + zen_core.expand_abbr(abbr, 'html')
	cur_line_pad = re.match(r'^(\s+)', cur_line)
	if cur_line_pad:
		result = zen_core.pad_string(result, cur_line_pad.group(1))
	vim.current.buffer[cur_line_num:cur_line_num+1] = (result.replace('$1', '', 1) + cur_line[cur_index:]).split('\n')
	for line in result.split('\n'):
		cur_line_num += 1
		pos = line.find('$1')
		if pos > -1:
			vim.current.window.cursor = (cur_line_num, pos)
			break
EOF
endfunction

inoremap <c-l> <c-o>:call ZenCodingExpandAbbr()<cr>

