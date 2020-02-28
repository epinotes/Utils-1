clean_var_names <- compose(
	# remove extreme "_"
	function(x) gsub("^_|_$", "", x, perl = T), 
	# remove repeat "_"
	function(x) gsub("(_)(?=_*\\1)", "", x, perl = T), 
	# not [A-Za-z0-9_] and replace with "_"
	function(x) gsub("\\W", "_", x), 
	# parenthesis/bracket and its contents
	function(x) gsub("\\(.+\\)", "", x),
	function(x) gsub("\\[.+\\]", "", x),
	tolower)
