cache() {
	local do_source=
	if [[ $1 == -s ]]; then
		do_source=1
		shift
	fi
	local file=$1; shift
	local ref=$1; shift
	if [[ -z $ref || ! -f $file || $ref -nt $file ]]; then
		local tmp=$file:h/.$file:t.$$
		if "$@" >$tmp; then
			mv -f $tmp $file
		else
			rm -f $tmp
		fi
	fi
	[[ $do_source && -f $file ]] && source $file
}